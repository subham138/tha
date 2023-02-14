const express = require('express');
const AdmZip = require('adm-zip');
const fs = require('fs');
const { PackageSave, GetPackageData, PromoSave, GetResult, HolderClingSave, UpdateApproval, F_Delete, SaveEmailBody, SaveMenuInfo, ConfigMenu, DelRes, HelpTextSave, OtherText, OrderConfSave, GenerateBitlyUrl, ConfirmOrder, CreateVenue, DeleteVenue, CreateVenueMenu, DeleteVenueMenu, ApproveProposal, saveQuest, saveQuestLang, saveQuestRest, saveQuestService, sendQuest, DelResCustom } = require('../modules/AdminModule');
const { F_Select } = require('../modules/MenuSetupModule');
const { SendPayProposal, sendQuestEmail } = require('../modules/EmailModule');
const { db_Select, db_Insert } = require('../modules/MasterModule');
const AdmRouter = express.Router(),
    dateFormat = require("dateformat");

AdmRouter.post('/package', async (req, res) => {
    var data = await PackageSave(req.body);
    res.send(data);
});

AdmRouter.get('/package', async (req, res) => {
    var data = await GetPackageData(req.query.res_id);
    res.send(data);
})

AdmRouter.post('/promo', async (req, res) => {
    var data = await PromoSave(req.body);
    res.send(data);
})

AdmRouter.get('/promo', async (req, res) => {
    var res_id = req.query.res_id,
        fields = 'id, restaurant_id, birth_calendar_flag as birth_flag, birth_calendar_free_flag as birth_free_flag, birth_calendar_price as birth_price, event_calendar_flag as event_flag, event_calendar_free_flag as event_free_flag, event_calendar_price as event_price',
        tb_name = 'td_order_items_custom',
        whr = `WHERE restaurant_id = ${res_id}`;
    var data = await GetResult(fields, tb_name, whr, null);
    res.send(data)
})

AdmRouter.post('/holder_cling', async (req, res) => {
    var data = await HolderClingSave(req.body);
    res.send(data);
})

AdmRouter.get('/holder_cling', async (req, res) => {
    var res_id = req.query.res_id,
        fields = 'id, restaurant_id, table_top_6, table_top_6_price, table_top_7, table_top_7_price, table_top_8, table_top_8_price, window_cling_9, window_cling_9_price',
        tb_name = 'td_order_items_custom',
        whr = `WHERE restaurant_id = ${res_id}`;
    var data = await GetResult(fields, tb_name, whr, null);
    res.send(data);
})

AdmRouter.get('/venue', async (req, res) => {
    var res_id = req.query.res_id,
        fields = 'id, restaurant_id, venue_name',
        tb_name = 'td_venue_custom',
        whr = `WHERE restaurant_id = ${res_id}`;
    var data = await GetResult(fields, tb_name, whr, null);
    res.send(data);
})

AdmRouter.post('/venue', async (req, res) => {
    var data = await CreateVenue(req.body);
    res.send(data);
})

AdmRouter.get('/del_venue', async (req, res) => {
    var id = req.query.id;
    var data = await DeleteVenue(id);
    res.send(data);
})

AdmRouter.get('/venue_menu', async (req, res) => {
    var res_id = req.query.res_id,
        id = req.query.id,
        venu_id = req.query.venu_id,
        venu_con = venu_id > 0 ? `AND a.venue_id = "${venu_id}"` : '',
        fields = venu_id > 0 ? 'a.id, a.restaurant_id, a.venue_id, a.menu_name, b.venue_name' : `group_concat(a.menu_name SEPARATOR ', ') as menu_name, a.id, a.restaurant_id, a.venue_id, b.venue_name`,
        tb_name = 'td_venue_menu_custom a, td_venue_custom b',
        whr = id > 0 ? `WHERE a.venue_id=b.id AND a.id = ${id} ${venu_con}` : `WHERE a.venue_id=b.id AND a.restaurant_id = ${res_id} ${venu_con}`,
        group = venu_id > 0 ? null : `GROUP BY a.venue_id`;
    var data = await GetResult(fields, tb_name, whr, group);
    res.send(data);
})

AdmRouter.post('/venue_menu', async (req, res) => {
    var data = await CreateVenueMenu(req.body);
    res.send(data);
})

AdmRouter.get('/del_venue_menu', async (req, res) => {
    var id = req.query.id;
    var data = await DeleteVenueMenu(id);
    res.send(data);
})

AdmRouter.get('/update_approval', async (req, res) => {
    var data = await UpdateApproval(req.query.flag, req.query.id);
    res.send(data);
})

AdmRouter.get('/res_menu', async (req, res) => {
    let special_menu_id = 5;
    var sql = `SELECT a.menu_id, b.menu_description as menu_name, a.active_flag FROM td_other_image_custom a, md_menu b WHERE a.menu_id=b.id AND a.restaurant_id = "${req.query.id}" AND a.active_flag="Y"`;
    var data = await F_Select(sql);
    var special_sql = `SELECT IF(count(*) > 0, 'Y', 'N') AS special_flag FROM td_menu_image_custom WHERE restaurant_id = "${req.query.id}" AND menu_id = "${special_menu_id}"`;
    var special_data = await F_Select(special_sql);
    var special_flag = special_data.msg[0].special_flag;
    // console.log(special_data.msg[0].special_flag);
    console.log(data.msg.push({ "menu_id": 5, "menu_name": "Special", "active_flag": special_flag }));
    res.send(data);
})

AdmRouter.get('/download_section', async (req, res) => {
    var res_id = req.query.id,
        menu_id = req.query.menu_id;
    let res_sql = `SELECT * FROM td_contacts WHERE id = "${res_id}"`;
    let res_dtls = await F_Select(res_sql);
    var res_name = res_dtls.msg[0].restaurant_name,
        downloadFileName = res_name + '_' + menu_id + '_' + Date.now() + '.zip';
    const zip = new AdmZip();
    var sql = `SELECT * FROM td_section_image_request WHERE restaurant_id = "${res_id}" AND menu_id = "${menu_id}"`;
    db.query(sql, (err, result) => {
        if (err) {
            console.log(err);
        } else {
            result.forEach(dt => {
                var path = "uploads/" + dt.sec_img;
                zip.addLocalFile(path);
                // console.log(path);
            })
            // const downloadFileName = `${req.query.id}.zip`;

            fs.writeFileSync(downloadFileName, zip.toBuffer());
            res.send(zip.toBuffer());
            // res.download(downloadFileName, (err) => {
            //     if (err) {
            //         console.log(err);
            //         res.send('Frror');
            //     }
            // })
        }
    })
})

AdmRouter.get('/download_cov', async (req, res) => {
    var res_id = req.query.id;
    let res_sql = `SELECT * FROM td_contacts WHERE id = "${res_id}"`;
    let res_dtls = await F_Select(res_sql);
    var res_name = res_dtls.msg[0].restaurant_name,
        downloadFileName = res_name + '_' + Date.now() + '.zip';
    const zip = new AdmZip();
    var logo_sql = `SELECT * FROM td_logo WHERE restaurant_id = "${res_id}"`,
        logo_dt = await F_Select(logo_sql),
        logo_path = 'uploads/' + logo_dt.msg[0].logo_path;
    zip.addLocalFile(logo_path);
    var sql = `SELECT * FROM td_other_image WHERE restaurant_id = "${res_id}"`;
    db.query(sql, (err, result) => {
        if (err) {
            console.log(err);
        } else {
            result.forEach(dt => {
                var cov_path = "uploads/" + dt.cover_page_img,
                    top_path = "uploads/" + dt.top_image_img;
                zip.addLocalFile(cov_path);
                zip.addLocalFile(top_path);
                // console.log(path);
            })
            // const downloadFileName = `${req.query.id}.zip`;

            fs.writeFileSync(downloadFileName, zip.toBuffer());
            res.send(zip.toBuffer());
            // res.download(downloadFileName, (err) => {
            //     if (err) {
            //         console.log(err);
            //         res.send('Frror');
            //     }
            // })
        }
    })
})

AdmRouter.get('/delete_sec', async (req, res) => {
    var id = req.query.id,
        db_name = 'md_section_custom',
        whr = `WHERE id = ${id}`;
    var data = await F_Delete(db_name, whr);
    res.send(data);
})

AdmRouter.get('/delete_item', async (req, res) => {
    var id = req.query.id,
        db_name = 'md_items_custom',
        whr = `WHERE id = ${id}`;
    var data = await F_Delete(db_name, whr);
    res.send(data);
})

AdmRouter.get('/delete_price_desc', async (req, res) => {
    var id = req.query.id,
        db_name = 'md_item_description_custom',
        whr = `WHERE id = ${id}`;
    var data = await F_Delete(db_name, whr);
    res.send(data);
})

AdmRouter.post('/email_body', async (req, res) => {
    var body = req.body;
    var data = await SaveEmailBody(body);
    res.send(data);
})

AdmRouter.get('/email_body', async (req, res) => {
    var id = req.query.id;
    var whr = id > 0 ? `AND a.email_type_id = ${id}` : '';
    var sql = `SELECT a.* FROM md_config_email a, md_email_type b WHERE a.email_type_id=b.id ${whr}`;
    var data = await F_Select(sql);
    res.send(data);
})

AdmRouter.get('/get_email_type', async (req, res) => {
    var sql = `SELECT * FROM md_email_type`;
    var data = await F_Select(sql);
    res.send(data);
})

AdmRouter.get('/get_menu_dtls', async (req, res) => {
    var id = req.query.id,
        res_id = req.query.res_id;
    // id = 0 -> REGULAR || 1 -> UNLIMITED || 2 -> CUSTOM || '' -> ALL //
    // var whr = id == 0 ? `WHERE menu_flag = 'R'` : (id == 1 ? `WHERE menu_flag = 'U'` : (id == 2 ? `WHERE menu_flag = 'C'` : ''));

    // var whr = id >= 0 ? `WHERE id = ${id} AND restaurant_id = 0` : `WHERE restaurant_id = ${res_id}`;
    var whr = id > 0 ? `WHERE id = ${id} AND restaurant_id = 0` : `WHERE restaurant_id = 0`;
    let sql = `SELECT * FROM md_menu ${whr}`;
    var data = await F_Select(sql);
    res.send(data);
})

AdmRouter.post('/get_menu_dtls', async (req, res) => {
    var data = req.body;
    var dt = await SaveMenuInfo(data);
    res.send(dt);
})

AdmRouter.get('/config_menu', async (req, res) => {
    let sql = `SELECT * FROM md_config_menu`;
    var data = await F_Select(sql);
    res.send(data);
})

AdmRouter.post('/config_menu', async (req, res) => {
    var data = req.body;
    var dt = await ConfigMenu(data);
    res.send(dt);
})

AdmRouter.get('/del_res', async (req, res) => {
    var res_id = req.query.id;
    var data = await DelRes(res_id);
    await DelResCustom(res_id)
    res.send(data);
})

AdmRouter.post('/help_text', async (req, res) => {
    var data = req.body;
    var dt = await HelpTextSave(data);
    res.send(dt);
})

AdmRouter.get('/help_text', async (req, res) => {
    let sql = `SELECT * FROM md_config_inst`;
    var data = await F_Select(sql);
    res.send(data);
})

AdmRouter.post('/other_text', async (req, res) => {
    var data = req.body;
    var dt = await OtherText(data);
    res.send(dt);
})

AdmRouter.post('/order_conf', async (req, res) => {
    var data = req.body;
    var dt = await OrderConfSave(data);
    res.send(dt);
})

AdmRouter.post('/create_bitly_url', async (req, res) => {
    var url = req.body.url,
        res_id = req.body.res_id;
    var data = await GenerateBitlyUrl(url, res_id);
    res.send(data);
})

AdmRouter.get('/order_price', async (req, res) => {
    var res_id = req.query.id;
    let sql = `SELECT id, restaurant_id, setup_fee, monthly_fee, birth_calendar_price as cal_price, 
    event_calendar_price as eve_price, (table_top_6 * table_top_6_price) as table_top_6_price, 
    (table_top_7 * table_top_7_price) as table_top_7_price, (table_top_8 * table_top_8_price) as table_top_8_price, 
    (window_cling_9 * window_cling_9_price) as window_cling_9_price 
    FROM td_order_items_custom
    WHERE restaurant_id = ${res_id}`;
    var data = await F_Select(sql);
    res.send(data);
})

AdmRouter.post('/confirm_order', async (req, res) => {
    var data = req.body;
    var dt = await ConfirmOrder(data);
    res.send(dt);
})

AdmRouter.post('/send_pay_email', async (req, res) => {
    var data = req.body,
        dt = await SendPayProposal(data.res_id, data.en_dt);
    res.send(dt);
})

AdmRouter.post('/approve_proposal', async (req, res) => {
    var data = req.body,
        dt = await ApproveProposal(data);
    res.send(dt);
})

AdmRouter.get('/dept', async (req, res) => {
    var data = req.query,
        select = 'id, dept_name',
        table_name = 'md_department',
        whr = data.id > 0 ? `id = ${data.id}` : `hotel_id='${data.hotel_id}'`,
        order = null;
    var res_dt = await db_Select(select, table_name, whr, order)
    res.send(res_dt)
})

AdmRouter.post('/dept', async (req, res) => {
    var data = req.body,
        datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss"),
        table_name = 'md_department',
        fields = data.id > 0 ? `dept_name = '${data.dept_name}', modified_by='${data.user}', modified_dt='${datetime}'` : `(hotel_id, dept_name, created_by, created_dt)`,
        values = `(${data.hotel_id}, '${data.dept_name}', '${data.user}', '${datetime}')`,
        whr = data.id > 0 ? `id=${data.id}` : null,
        flag = data.id > 0 ? 1 : 0;
    var res_dt = await db_Insert(table_name, fields, values, whr, flag)
    res.send(res_dt)
})

module.exports = { AdmRouter };
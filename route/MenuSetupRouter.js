const express = require("express");
const {
    BreakfastSave,
    MenuSave,
    LogoSave,
    AboutUsSave,
    NoticeSave,
    F_Select,
    MonthDateSave,
    SectionSave,
    ItemSave,
    ItemPriceSave,
    GenerateQr,
    AddMenu,
    DeleteMenuAdditional,
} = require("../modules/MenuSetupModule");
const { TestRouter, UploadLogo } = require("./TestRoute");
const MenuSetRouter = express.Router();

MenuSetRouter.post("/menu_setup", async (req, res) => {
    console.log({ body: req.body[0] });
    var data = await MenuSave(req.body[0]);
    res.send(data);
});

// MenuSetRouter.post('/logo', async (req, res) => {
//     console.log({ body: req.body });
//     let res_name = req.body.restaurant_name.replace(' ', '_');
//     var data = await UploadLogo(req.files.logo_img, res_name, req.body);
//     res.send(data);
// })

MenuSetRouter.post("/aboutus", async (req, res) => {
    console.log({ body: req.body });
    var data = await AboutUsSave(req.body);
    res.send(data);
});

MenuSetRouter.post("/notice", async (req, res) => {
    // console.log({ body: req.body });
    var data = await NoticeSave(req.body);
    res.send(data);
});

MenuSetRouter.get("/menu_setup", async (req, res) => {
    let id = req.query.id,
        menu_id = req.query.menu_id,
        venue_whr = req.query.venue_id
            ? `AND a.venue_id = "${req.query.venue_id}"`
            : "";
    let whr = menu_id ? `AND menu_id = "${menu_id}"` : "";
    // console.log(whr);
    // let sql = `SELECT b.logo_url, a.menu_id, a.cover_page_url, a.top_img_url, a.active_flag, c.menu_url
    //     FROM td_other_image a
    //     left JOIN td_logo b ON a.restaurant_id = b.restaurant_id
    //     left JOIN td_menu_image c ON a.restaurant_id = c.restaurant_id
    //     WHERE a.restaurant_id = "${id}"`;
    let oth_sql = `SELECT a.id, a.venue_id, a.menu_id, a.active_flag, a.cover_page_img, a.cover_page_url, a.top_image_img, a.top_img_url, b.menu_name FROM td_other_image_custom a, td_venue_menu_custom b WHERE a.restaurant_id = "${id}" AND a.venue_id=b.venue_id AND a.menu_id=b.id ${whr} ${venue_whr}`;
    var oth_dt = await F_Select(oth_sql),
        logo_sql = `SELECT a.id, a.logo_url, a.logo_path FROM td_logo_custom a WHERE a.restaurant_id = "${id}" ${venue_whr}`,
        logo_dt = await F_Select(logo_sql),
        menu_sql = `SELECT a.id, a.venue_id, a.menu_id, a.active_flag, a.menu_url, a.menu_img, b.menu_name FROM td_menu_image_custom a, td_venue_menu_custom b WHERE a.restaurant_id = "${id}" AND a.venue_id=b.venue_id AND a.menu_id=b.id ${whr} ${venue_whr}`,
        menu_dt = await F_Select(menu_sql),
        dif_info_sql = `SELECT cover_img as dif_img FROM md_config_inst`,
        dif_img = await F_Select(dif_info_sql);
    var data = {
        suc: 1,
        oth_dt: oth_dt.msg,
        logo_dt: logo_dt.msg,
        menu_dt: menu_dt.msg,
        dif_img: dif_img.msg,
    };
    res.send(data);
});

MenuSetRouter.get("/section_image", async (req, res) => {
    let res_id = req.query.id;
    let menu_id = req.query.menu_id;
    let sql = `SELECT id, menu_id, sec_url, sec_img FROM td_section_image_request WHERE restaurant_id = "${res_id}" AND menu_id = "${menu_id}" ORDER BY id`;
    var data = await F_Select(sql);
    res.send(data);
});

MenuSetRouter.get("/date_time", async (req, res) => {
    let res_id = req.query.id;
    let menu_id = req.query.menu_id;
    var data = "";
    let sql = "";
    if (menu_id != 5) {
        sql = `SELECT restaurant_id, menu_id, month_day, start_time, end_time FROM td_date_time_custom WHERE restaurant_id = "${res_id}" AND menu_id = "${menu_id}"`;
        data = await F_Select(sql);
    } else {
        sql = `SELECT * FROM td_special_date_time WHERE restaurant_id = ${req.query.id}`;
        data = await F_Select(sql);
    }
    // console.log(data);
    res.send(data);
});

MenuSetRouter.post("/date_time", async (req, res) => {
    console.log(req.body);
    var dt = await MonthDateSave(req.body[0]);
    var data = dt ? { suc: 1, msg: "Success" } : { suc: 0, msg: "Not Inserted" };
    res.send(data);
    // res.send(data);
});

MenuSetRouter.get("/aboutus", async (req, res) => {
    var res_id = req.query.id,
        hotel_id = req.query.hotel_id;
    let sql = `SELECT * FROM td_about WHERE hotel_id = ${hotel_id} AND restaurant_id = "${res_id}"`;
    var data = await F_Select(sql);
    res.send(data);
});

// MenuSetRouter.post('/section', async (req, res) => {
//     console.log(req.body);
//     var data = await SectionSave(req.body);
//     res.send(data);
// })

MenuSetRouter.get("/section", async (req, res) => {
    var res_id = req.query.id,
        hotel_id = req.query.hotel_id;
    var menu_id = req.query.menu_id,
        menu_name = menu_id == 'B' ? 'Breakfast' : (menu_id == 'R' ? 'Branch' : (menu_id == 'D' ? 'Dinner' : (menu_id == 'L' ? 'Lunch' : (menu_id == 'S' ? 'Special' : 'Menuservice List'))));
    let whr = menu_id > 0 ? `AND a.menu_id = "${menu_id}"` : "";
    let sql = `SELECT a.*, '${menu_name}' menu_name FROM md_section a WHERE a.hotel_id = ${hotel_id} AND a.restaurant_id = "${res_id}" ${whr}`;
    var data = await F_Select(sql);
    res.send(data);
});

MenuSetRouter.post("/items", async (req, res) => {
    //   console.log(req.body);
    var data = await ItemSave(req.body);
    res.send(data);
});

MenuSetRouter.get("/items", async (req, res) => {
    var hotel_id = req.query.hotel_id,
        menu_id = req.query.menu_id,
        sec_id = req.query.sec_id,
        menu_name = menu_id == 'B' ? 'Breakfast' : (menu_id == 'R' ? 'Branch' : (menu_id == 'D' ? 'Dinner' : (menu_id == 'L' ? 'Lunch' : (menu_id == 'S' ? 'Special' : 'Menuservice List'))));
    let whr = sec_id > 0 ? `AND a.section_id = "${sec_id}"` : "";
    let sql = `SELECT a.*, '${menu_name}' menu_name FROM md_service_items a WHERE a.hotel_id = ${hotel_id} ${whr}`;
    var data = await F_Select(sql);
    res.send(data);
});

MenuSetRouter.post("/item_price", async (req, res) => {
    console.log(req.body);
    var data = await ItemPriceSave(req.body);
    res.send(data);
});

MenuSetRouter.get("/item_price", async (req, res) => {
    var item_id = req.query.item_id,
        menu_id = req.query.menu_id,
        menu_name = menu_id == 'B' ? 'Breakfast' : (menu_id == 'R' ? 'Branch' : (menu_id == 'D' ? 'Dinner' : (menu_id == 'L' ? 'Lunch' : (menu_id == 'S' ? 'Special' : 'Menuservice List'))));
    let sql = `SELECT a.*, b.item_name, '${menu_name}' menu_name FROM md_service_item_description a, md_service_items b WHERE a.service_item_id=b.service_item_id AND service_item_id =${item_id}`;
    var data = await F_Select(sql);
    res.send(data);
});

MenuSetRouter.get("/notice", async (req, res) => {
    var res_id = req.query.id;
    var menu_id = req.query.menu_id,
        hotel_id = req.query.hotel_id;
    var whr = menu_id > 0 ? `AND menu_id = "${menu_id}"` : "";
    let sql = `SELECT * FROM td_menu_notice WHERE hotel_id = ${hotel_id} AND restaurant_id = "${res_id}" ${whr}`;
    var data = await F_Select(sql);
    res.send(data);
});

MenuSetRouter.get("/res_details", async (req, res) => {
    var res_id = req.query.id;
    let whr = res_id > 0 ? `WHERE a.id = "${res_id}"` : "";
    // let sql = `SELECT a.*, c.setup_fee, c.monthly_fee, d.approval_flag, e.name as country FROM td_contacts a
    //             LEFT JOIN td_order_items b ON a.id=b.restaurant_id
    //             LEFT JOIN md_package c ON b.package_id=c.pakage_name
    //             LEFT JOIN md_url d ON a.id=d.restaurant_id
    //             JOIN md_country e ON a.country = e.id ${whr}`;
    let sql = `SELECT a.*, e.name as country, b.setup_fee, b.monthly_fee 
    FROM td_contacts_custom a 
    JOIN md_country e ON a.country = e.id 
    JOIN td_order_items_custom b ON a.id=b.restaurant_id ${whr}`;
    var data = await F_Select(sql);
    res.send(data);
});

MenuSetRouter.get("/res_dtls", async (req, res) => {
    var res_id = req.query.id;
    let whr =
        res_id > 0
            ? `WHERE a.id = "${res_id}" AND b.approval_flag = 'A'`
            : `WHERE b.approval_flag = 'A'`;
    // let sql = `SELECT a.*, c.setup_fee, c.monthly_fee, d.approval_flag FROM td_contacts_custom a
    //             JOIN td_order_items b ON a.id=b.restaurant_id
    //             JOIN md_package c ON b.package_id=c.pakage_name
    //             JOIN md_url d ON a.id=d.restaurant_id
    //             JOIN td_users e ON a.id = e.restaurant_id AND e.active_flag = "Y" ${whr}`;
    let sql = `SELECT a.*, b.menu_approval_flag as approval_flag 
    FROM td_contacts_custom a 
    JOIN td_order_items_custom b ON a.id=b.restaurant_id ${whr}`;
    var data = await F_Select(sql);
    res.send(data);
});

MenuSetRouter.get("/res_dtls_custom", async (req, res) => {
    //var res_id = req.query.id;
    //let whr = res_id > 0 ? `WHERE a.id = "${res_id}"` : '';
    var res_id = req.query.id,
        flag = req.query.flag; // H-> Home; S-> Sales Account
    let whr =
        res_id > 0
            ? `WHERE a.id = "${res_id}" AND active_user = 'Y' ${flag ? 'AND account_type = "' + flag + '"' : ""
            }`
            : `WHERE active_user = 'Y' ${flag ? 'AND account_type = "' + flag + '"' : ""
            }`;
    // let sql = `SELECT a.*, c.setup_fee, c.monthly_fee, d.approval_flag FROM td_contacts_custom a
    //             JOIN td_order_items b ON a.id=b.restaurant_id
    //             JOIN md_package c ON b.package_id=c.pakage_name
    //             JOIN md_url d ON a.id=d.restaurant_id
    //             JOIN td_users e ON a.id = e.restaurant_id AND e.active_flag = "Y" ${whr}`;
    let sql = `SELECT a.*, e.name as country, a.country country_id 
    FROM td_contacts_custom a 
    JOIN md_country e ON a.country = e.id ${whr}`;
    var data = await F_Select(sql);
    res.send(data);
});

MenuSetRouter.get("/get_url", async (req, res) => {
    var hotel_id = req.query.id,
        srv_id = req.query.srv_id;
    var sql = `SELECT * FROM md_url_custom WHERE hotel_id = ${hotel_id} AND restaurant_id = "${srv_id}"`;
    var data = await F_Select(sql);
    res.send(data);
});

MenuSetRouter.post("/generate_qr", async (req, res) => {
    console.log(req.body);
    var data = await GenerateQr(req.body);
    console.log(data);
    res.send(data);
});

MenuSetRouter.post("/add_menu", async (req, res) => {
    var data = req.body;
    var dt = await AddMenu(data);
    res.send(dt);
});

MenuSetRouter.get("/add_menu", async (req, res) => {
    var res_id = req.query.res_id;
    let sql = `SELECT * FROM md_menu WHERE restaurant_id = ${res_id}`;
    var data = await F_Select(sql);
    res.send(data);
});

MenuSetRouter.get("/delete_menu", async (req, res) => {
    var id = req.query.id;
    var data = await DeleteMenuAdditional(id);
    res.send(data);
});

module.exports = { MenuSetRouter };

const express = require('express');
const dateFormat = require('dateformat');
const { PreviewMenu, CheckMenu, MenuData, AllMenu } = require('../modules/MenuModule');
const { F_Select } = require('../modules/MenuSetupModule');
const { db_Select } = require("../modules/MasterModule");
const MenuRouter = express.Router();

MenuRouter.get('/preview_menu', async (req, res) => {
    var now = new Date();
    var dt = {
        Monday: 2,
        Tuesday: 3,
        Wednesday: 4,
        Thursday: 5,
        Friday: 6,
        Saturday: 7,
        Sunday: 8,
    };
    var now_date = dateFormat(now, "dddd"),
        menu_date = dt[now_date];
    let res_id = req.query.id,
        str_time = req.query.st_time,
        end_time = req.query.end_time,
        menu_id = req.query.menu_id,
        date = 0;
    var data = await PreviewMenu(res_id, str_time, end_time, menu_id, date, menu_date);
    // console.log(data);
    // res.setHeader('Content-Type', 'application/json');
    res.send(data);
    // res.send(data);
})

MenuRouter.get('/menu_data', async (req, res) => {
    var res_id = req.query.id,
        venue_id = req.query.venue_id,
        menu_active_flag = 'N',
        replace_menu_id = 0,
        st_time = '',
        end_time = '',
        reg_menu_flag = '',
        sql = '',
        st_en_sql = '',
        st_en_dt = '';
    var now = new Date();
    var data = {
        Monday: 2,
        Tuesday: 3,
        Wednesday: 4,
        Thursday: 5,
        Friday: 6,
        Saturday: 7,
        Sunday: 8,
    };
    var morning_st = '05:00:00',
        morning_end = '11:59:59',
        noon_st = '12:00:00',
        noon_end = '17:59:59';
    var greet = '';
    var date = dateFormat(now, "dddd"),
        menu_date = data[date],
        now_date = dateFormat(now, 'yyyy-mm-dd');

    // GET USER TIMEZONE AND SET TIME AS LOCAL TIME ZONE //
    var date_sql = `SELECT * FROM td_contacts_custom WHERE id = "${res_id}"`;
    var con_dt = await F_Select(date_sql);
    var zone = con_dt.msg[0].time_zone;
    // console.log({ zone });
    let loc_time = zone != '' ? new Date().toLocaleString('en-US', { timeZone: zone }) : new Date();
    let curr_time = dateFormat(loc_time, "HH:MM:ss");

    // CHECK SPECIAL MENU OPERATION //
    var dt = await (CheckSpecialMenu(res_id, menu_date, now_date));
    if (dt.res) {
        // FOR EXCLUSIVE SPECIAL MENU //
        if (dt.special_dt.day_flag == 'E') {
            sql = `SELECT id, restaurant_id, menu_id, active_flag, regular_menu_flag, day_flag, month_day, menu_frm_dt, menu_to_dt, group_concat(DISTINCT regular_menu_id separator ',') as regular_menu_id, start_time, end_time 
            FROM td_special_date_time WHERE restaurant_id = ${res_id} AND month_day = ${menu_date}`;
            sql_dt = await F_Select(sql);
            if (sql_dt.msg.length > 0) {
                st_en_sql = `SELECT MIN(start_time) start_time, MAX(end_time) end_time FROM td_date_time_custom WHERE restaurant_id = ${res_id} AND venue_id = "${venue_id}" AND menu_id IN (${dt.special_dt.regular_menu_id})`;
                st_en_dt = await F_Select(st_en_sql);
                st_time = st_en_dt.msg[0].start_time;
                end_time = st_en_dt.msg[0].end_time;
                // FOR ACTIVATION TIMING SPECIAL MENU //
                if (curr_time >= st_time && curr_time <= end_time) {
                    menu_active_flag = 'Y';
                    reg_menu_flag = sql_dt.msg[0].regular_menu_flag;
                    replace_menu_id = sql_dt.msg[0].regular_menu_id;
                } else {
                    menu_active_flag = 'N';
                    reg_menu_flag = '';
                    replace_menu_id = 0;
                }
            } else {
                menu_active_flag = 'N';
                reg_menu_flag = '';
                replace_menu_id = 0;
            }
        } else {
            // FOR IN ADDITION SPECIAL MENU //
            sql = `SELECT id, restaurant_id, menu_id, active_flag, regular_menu_flag, day_flag, month_day, menu_frm_dt, menu_to_dt, group_concat(DISTINCT regular_menu_id separator ',') as regular_menu_id, start_time, end_time
            FROM td_special_date_time WHERE restaurant_id = ${res_id} AND menu_frm_dt <= "${now_date}" AND menu_to_dt >= "${now_date}"`;
            // console.log({ ex_sql: sql });
            sql_dt = await F_Select(sql);
            if (sql_dt.msg.length > 0) {
                st_en_sql = `SELECT MIN(start_time) start_time, MAX(end_time) end_time FROM td_date_time_custom WHERE restaurant_id = ${res_id} AND menu_id IN (${dt.special_dt.regular_menu_id})`;
                st_en_dt = await F_Select(st_en_sql);
                st_time = st_en_dt.msg[0].start_time;
                end_time = st_en_dt.msg[0].end_time;
                // FOR ACTIVATION TIMING SPECIAL MENU //
                if (curr_time >= st_time && curr_time <= end_time) {
                    menu_active_flag = 'Y';
                    reg_menu_flag = sql_dt.msg[0].regular_menu_flag;
                    replace_menu_id = sql_dt.msg[0].regular_menu_id;
                } else {
                    menu_active_flag = 'N';
                    reg_menu_flag = '';
                    replace_menu_id = 0;
                }
            } else {
                menu_active_flag = 'N';
                replace_menu_id = 0;
                reg_menu_flag = '';
                st_time = '';
                end_time = '';
            }
        }
    }
    // END //
    // CHECK MORE MENU OPERATION //
    var more_menu_flag = await CheckMoreMenu(res_id, menu_date, curr_time);
    // END //

    // CHECK CURRENT TIME WITH START TIME AND END TIME //
    if (curr_time >= morning_st && curr_time <= morning_end) {
        // greet = 'Good Morning';
        greet = 1;
    } else if (curr_time >= noon_st && curr_time < noon_end) {
        // greet = 'Good Afternoon';
        greet = 2;
    } else {
        // greet = 'Good Evening';
        greet = 3;
    }

    // FETCH RESULT FROM MENUMODEL.JS MENUDATA FUNCTION //
    var result = await MenuData(res_id, venue_id, cu_st_time = curr_time, cu_end_time = curr_time, menu_id = 0, menu_date, greet, menu_active_flag, replace_menu_id, reg_menu_flag, sp_st_time = st_time, sp_end_time = end_time, more_menu_flag);
    res.send(result);
})

// CHECKING SPECIAL MENU IS ACTIVE OR NOT //
const CheckSpecialMenu = async (res_id, date, now_date) => {
    var special_dt = '',
        dt = '',
        whr = '';
    var chk_sql = `SELECT id, day_flag FROM td_special_date_time WHERE restaurant_id = ${res_id}`;
    var chk_dt = await F_Select(chk_sql);
    if (chk_dt.msg.length > 0) {
        var day_flag = chk_dt.msg[0].day_flag;
        whr = day_flag != 'E' ? `AND menu_frm_dt <= "${now_date}" AND menu_to_dt >= "${now_date}"` : `AND month_day = ${date}`;
    }
    var cunt_sql = `SELECT id, menu_id, active_flag, regular_menu_flag, day_flag, group_concat(DISTINCT regular_menu_id separator ',') as regular_menu_id
    FROM td_special_date_time WHERE restaurant_id = ${res_id} ${whr}`;
    console.log({ cunt_sql });
    var cunt_dt = await F_Select(cunt_sql);
    return new Promise((resolve, reject) => {
        if (cunt_dt.msg.length > 0) {
            dt = cunt_dt.msg[0];
            if (dt.active_flag != 'N') {
                special_dt = { id: dt.id, menu_id: dt.menu_id, active_flag: dt.active_flag, regular_menu_flag: dt.regular_menu_flag, day_flag: dt.day_flag, regular_menu_id: dt.regular_menu_id };
                res = true;
            } else {
                special_dt = '';
                res = false;
            }
        } else {
            special_dt = '';
            res = false;
        }
        resolve({ res, special_dt });
    })
}

// CHECKING OVERLAP MENU //
MenuRouter.get('/check_menu', async (req, res) => {
    var res_id = req.query.id,
        st_time = req.query.st_time,
        end_time = req.query.end_time,
        menu_id = req.query.menu_id,
        flag = req.query.flag;
    var data = await CheckMenu(res_id, st_time, end_time, null, menu_id, flag);
    res.send(data);
})

MenuRouter.get('/check_special_overlap', async (req, res) => {
    var res_id = req.query.id;
    let sp_sql = `SELECT id, menu_id, active_flag, regular_menu_flag, day_flag, group_concat(DISTINCT regular_menu_id separator ',') as regular_menu_id
    FROM td_special_date_time WHERE restaurant_id = ${res_id}`;
    let sp_dt = await F_Select(sp_sql);
    let ovl_sql = `SELECT DISTINCT a.menu_id, b.menu_description, a.start_time, a.end_time FROM td_date_time_custom a, md_menu b WHERE a.menu_id=b.id AND a.restaurant_id = ${res_id} AND a.menu_id IN (${sp_dt.msg[0].regular_menu_id})`;
    let ovl_dt = await F_Select(ovl_sql);
    let st_en_sql = `SELECT MIN(start_time) start_time, MAX(end_time) end_time FROM td_date_time_custom WHERE restaurant_id = ${res_id} AND menu_id IN (${sp_dt.msg[0].regular_menu_id})`;
    let st_en_dt = await F_Select(st_en_sql);
    let st_time = st_en_dt.msg[0].start_time;
    let end_time = st_en_dt.msg[0].end_time;
    if (sp_dt.msg[0].regular_menu_flag != 'E') {
        ovl_dt.msg.push({ menu_id: 5, menu_description: 'Special Menu', start_time: st_time, end_time: end_time })
    }
    res.send(ovl_dt);
})

const CheckMoreMenu = async (res_id, date, curr_time) => {
    var result = 'N';
    var chk_sql = `SELECT COUNT(id) cunt_dt FROM td_order_items_custom WHERE restaurant_id = ${res_id}`;
    var chk_dt = await F_Select(chk_sql);
    return new Promise(async (resolve, reject) => {
        if (chk_dt.msg[0].cunt_dt > 0) {
            var chk = `SELECT COUNT(a.id) as chk 
            FROM td_date_time_custom a, td_venue_menu_custom b
            WHERE a.menu_id=b.id
            AND a.restaurant_id = ${res_id}
            AND a.month_day = ${date}
            AND a.start_time <= "${curr_time}"
            AND a.end_time >= "${curr_time}"`;
            // console.log(chk);
            var checking_dt = await F_Select(chk);
            if (checking_dt.msg[0].chk > 0) {
                result = 'Y';
            } else {
                result = 'N';
            }
        } else {
            result = 'N';
        }
        // res.send(result);
        resolve('N');
    })
    // if(chk_dt.msg)
}

MenuRouter.get('/get_all_menu', async (req, res) => {
    var res_id = req.query.id;
    var data = await AllMenu(res_id);
    res.send(data);
})

MenuRouter.get("/static_menu", async (req, res) => {
    var data = req.query,
        select,
        table_name,
        whr,
        order,
        dat = {},
        dt = {},
        resData;
    select =
        "a.section_id, a.hotel_id, a.restaurant_id, a.menu_id, b.name res_name, a.section_name, a.section_img";
    table_name = "md_section a, td_quest_res_bars b";
    whr = `a.hotel_id=b.hotel_id AND a.restaurant_id=b.id AND a.hotel_id=${data.hotel_id} AND a.restaurant_id=${data.res_id}`;
    order = null;
    var res_dt = await db_Select(select, table_name, whr, order);
    if (res_dt.suc > 0 && res_dt.msg.length > 0) {
        for (let menu of res_dt.msg) {
            let itemDt = await getItemBySection(data.hotel_id, menu.section_id);
            let othImg = await getOtherImageByMenu(
                data.hotel_id,
                menu.restaurant_id,
                menu.menu_id
            );
            if (itemDt.suc > 0 && itemDt.msg.length > 0) {
                dat[menu.section_name] = {
                    res: itemDt.msg,
                    sec_img: menu.section_img,
                    cover_img:
                        othImg.suc > 0 && othImg.msg.length > 0
                            ? othImg.msg[0].cover_page_img
                            : "",
                    top_img:
                        othImg.suc > 0 && othImg.msg.length > 0
                            ? othImg.msg[0].top_image_img
                            : "",
                };
                dt[menu.menu_id] = dat;
            }
        }
    }
    resData = { suc: res_dt.suc, msg: dt };
    res.send(resData);
});

const getItemBySection = async (hotel_id, sec_id) => {
    return new Promise(async (resolve, reject) => {
        var select =
            "a.hotel_id, a.item_name, b.item_price, b.item_desc, b.item_note, b.note_color, b.note_back_color",
            table_name = "md_service_items a, md_service_item_description b",
            whr = `a.service_item_id=b.service_item_id AND a.section_id = ${sec_id} AND a.hotel_id = ${hotel_id}`,
            order = null;
        var res_dt = await db_Select(select, table_name, whr, order);
        resolve(res_dt);
    });
};

const getOtherImageByMenu = (hotel_id, res_id, menu_id) => {
    return new Promise(async (resolve, reject) => {
        var select =
            "hotel_id, srv_res_flag, srv_res_id, menu_id, cover_page_img, top_image_img",
            table_name = "td_other_image",
            whr = `hotel_id = ${hotel_id} AND srv_res_id = ${res_id} AND menu_id = '${menu_id}'`,
            order = null;
        var res_dt = await db_Select(select, table_name, whr, order);
        resolve(res_dt);
    });
};

MenuRouter.get("/dynamic_menu", async (req, res) => {
    var data = req.query,
        select,
        table_name,
        whr,
        order,
        dat = {},
        dt = {},
        resData,
        mowTime = dateFormat(new Date(), "HH:MM:ss");
    var res_dt = await db_Select(select, table_name, whr, order);
});

MenuRouter.get("/test_menu", async (req, res) => {
    var data = {
        suc: 1,
        msg: {
            B: {
                "House Specialities": {
                    res: [
                        {
                            hotel_id: 1,
                            item_name: "BREAKFAST BURRITO",
                            item_price: 46,
                            item_desc:
                                "Choice of bacon or chorizo with scrambled eggs, potatoes & cheese, wrapped in a flour tortilla Served with breakfast potatoes or fresh fruit",
                            item_note: "shwut",
                            note_color: "#ffffff",
                            note_back_color: "#000000",
                        },
                        {
                            hotel_id: 1,
                            item_name: "LOX BAGEL",
                            item_price: 5,
                            item_desc:
                                "Cold smoked salmon, tomato, cucumber, avocado, capers, red onion & cream cheese",
                            item_note: "sdf",
                            note_color: "#ffffff",
                            note_back_color: "#000000",
                        },
                    ],
                    sec_img: "",
                },
            },
        },
    };
    var menu = Object.keys(data.msg);
    section = Object.keys(data.msg["B"]);
    var section;
    for (let dt of menu) {
        console.log(dt);
        section = Object.keys(data.msg[dt]);
        console.log(section);
        for (let sec of section) {
            for (let menu of data.msg[dt][sec].res) {
                console.log(menu);
            }
        }
    }
    console.log(menu);
    // for(let dt of data.msg){
    //     console.log(dt);
    // }
});

module.exports = { MenuRouter }
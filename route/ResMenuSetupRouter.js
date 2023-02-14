const express = require('express'),
    ResMenuRouter = express.Router(),
    dateFormat = require('dateformat');
const { db_Select } = require('../modules/MasterModule');

ResMenuRouter.get('/cust_menu_list', async (req, res) => {
    var hotel_id = req.query.hotel_id, select, table_name, whr, order, resDt;
    select = 'id, hotel_id, hotel_type, name, breakfast, lunch, dinner, brunch, bar_menu, special_menu, "N" menu_service_list'
    table_name = 'td_quest_res_bars'
    whr = `hotel_id = ${hotel_id}`
    order = null;
    var res_dt = await db_Select(select, table_name, whr, order)

    select = 'id, hotel_id, "S" hotel_type, service_name name, breakfast, lunch, dinner, brunch, "N" bar_menu, special special_menu, "N" menu_service_list'
    table_name = 'td_quest_service'
    whr = `hotel_id = ${hotel_id} AND (breakfast != 'N' OR lunch != 'N' OR dinner != 'N' OR brunch != 'N' OR special != 'N')`
    order = null;
    var serv_res_dt = await db_Select(select, table_name, whr, order)

    res_dt.suc > 0 ? res_dt.msg.push(serv_res_dt.suc > 0 && serv_res_dt.msg.length > 0 ? serv_res_dt.msg[0] : '') : ''

    select = 'id, hotel_id, "S" hotel_type, service_name name, breakfast, lunch, dinner, brunch, "N" bar_menu, special special_menu, menu_service_list'
    table_name = 'td_quest_service'
    whr = `hotel_id = ${hotel_id} AND menu_service_list != 'N'`
    order = null;
    var serv_list = await db_Select(select, table_name, whr, order)

    resDt = { suc: res_dt.suc > 0 ? 1 : 0, msg: res_dt.suc > 0 ? { 'restaurant': res_dt.msg, 'service': serv_list.suc > 0 ? serv_list.msg : '' } : res_dt.msg }

    res.send(resDt)
})

ResMenuRouter.get('/get_menu_service_dt', async (req, res) => {
    let hotel_id = req.query.hotel_id,
        menu_id = req.query.menu_id,
        flag = req.query.flag,
        resSerId = req.query.srv_res_id,
        select, table_name, whr, order;
    var hotelWhr = hotel_id > 0 ? `hotel_id=${hotel_id}` : "",
      menuWhr = menu_id && menu_id > 0 ? ` AND menu_id = "${menu_id}"` : "",
      flagWhr = flag ? ` AND srv_res_flag = "${flag}"` : "",
      resServWhr = resSerId && resSerId > 0 ? ` AND srv_res_id = "${resSerId}"` : "";

    // let oth_sql = `SELECT a.id, a.venue_id, a.menu_id, a.active_flag, a.cover_page_img, a.cover_page_url, a.top_image_img, a.top_img_url, b.menu_name FROM td_other_image_custom a, td_venue_menu_custom b WHERE a.restaurant_id = "${id}" AND a.venue_id=b.venue_id AND a.menu_id=b.id ${menuWhr}`;  
    select = 'hotel_id, srv_res_flag, srv_res_id, menu_id, active_flag, cover_page_img, cover_page_url, top_image_img, top_img_url';
    table_name = 'td_other_image'
    whr = `${hotelWhr}${menuWhr}${flagWhr}${resServWhr}`
    order = null
    var oth_dt = await db_Select(select, table_name, whr, order)

    // logo_sql = `SELECT a.id, a.logo_url, a.logo_path FROM td_logo_custom a WHERE a.restaurant_id = "${id}"`
    select = 'hotel_id, srv_res_flag, srv_res_id, logo_url, logo_path';
    table_name = 'td_logo'
    whr = `${hotelWhr}${flagWhr}${resServWhr}`
    var logo_dt = await db_Select(select, table_name, whr, order)

    // menu_sql = `SELECT a.id, a.venue_id, a.menu_id, a.active_flag, a.menu_url, a.menu_img, b.menu_name FROM td_menu_image_custom a, td_venue_menu_custom b WHERE a.restaurant_id = "${id}" AND a.venue_id=b.venue_id AND a.menu_id=b.id ${menuWhr}`
    select = 'hotel_id, srv_res_flag, srv_res_id, menu_id, active_flag, menu_url, menu_img';
    table_name = 'td_menu_image'
    whr = `${hotelWhr}${menuWhr}${flagWhr}${resServWhr}`
    var menu_dt = await db_Select(select, table_name, whr, order)

    // dif_info_sql = `SELECT cover_img as dif_img FROM md_config_inst`,    
    select = 'cover_img as dif_img';
    table_name = 'md_config_inst'
    whr = null
    var dif_img = await db_Select(select, table_name, whr, order)

    var data = { suc: 1, oth_dt: oth_dt.msg, logo_dt: logo_dt.msg, menu_dt: menu_dt.msg, dif_img: dif_img.msg };
    res.send(data);
})

ResMenuRouter.get('/res_date_time_dt', async (req, res) => {
    let hotel_id = req.query.hotel_id,
        menu_id = req.query.menu_id,
        flag = req.query.flag,
        resSerId = req.query.srv_res_id;
    var hotelWhr = hotel_id > 0 ? `hotel_id=${hotel_id}` : '',
        menuWhr = menu_id ? ` AND menu_id = "${menu_id}"` : '',
        flagWhr = flag ? ` AND srv_res_flag = "${flag}"` : '',
        resServWhr = menu_id ? ` AND srv_res_id = "${resSerId}"` : '';
    var select = 'hotel_id, srv_res_flag, srv_res_id, menu_id, active_flag, month_day, start_time, end_time';
    table_name = 'td_date_time',
        whr = `${hotelWhr}${menuWhr}${flagWhr}${resServWhr}`,
        order = null
    var res_dt = await db_Select(select, table_name, whr, order)
    res.send(res_dt)
})

module.exports = { ResMenuRouter }
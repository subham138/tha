const express = require('express');
const { InsertCalender, ApproveCal } = require('../modules/CalenderModule');
const { F_Select } = require('../modules/MenuSetupModule');
const CalenderRouter = express.Router();

CalenderRouter.get('/calender_dtls', async (req, res) => {
    var res_id = req.query.id,
        venue_id = req.query.venue_id,
        sql = '',
        data = '',
        flag = req.query.flag,
        date_whr = req.query.date ? `AND event_date = "${req.query.date}"` : '';
    if (flag == 1) {
        sql = `SELECT * FROM td_calendar_custom WHERE restaurant_id = ${res_id} AND venue_id = "${venue_id}" AND approval_flag = 'Y' AND user_type IN('R', 'A') AND event_date >= CURRENT_DATE() ${date_whr}`;
    } else if (flag == 0) {
        sql = `SELECT * FROM td_calendar_custom WHERE restaurant_id = ${res_id} AND venue_id = "${venue_id}" AND user_type IN('U') ${date_whr}`;
    } else {
        sql = `SELECT * FROM td_calendar_custom WHERE restaurant_id = ${res_id} AND venue_id = "${venue_id}" AND approval_flag = 'Y' AND user_type IN('R', 'A', 'U') AND event_date >= CURRENT_DATE() ${date_whr}`;
    }
    data = await F_Select(sql);
    res.send(data);
})

CalenderRouter.get('/get_cal', async (req, res) => {
    var id = req.query.id,
        whr = id > 0 ? `WHERE id = ${id}` : '';
    var sql = `SELECT * FROM td_calendar_custom ${whr}`;
    var data = await F_Select(sql);
    res.send(data);
})

CalenderRouter.get('/check_calender', async (req, res) => {
    var res_id = req.query.id;
    let sql = `SELECT restaurant_id, event_calendar_flag event_calendar FROM td_order_items_custom WHERE  restaurant_id = ${res_id}`;
    var data = await F_Select(sql);
    res.send(data);
})

CalenderRouter.get('/get_res_dtls', async (req, res) => {
    var res_id = req.query.id;
    let whr = res_id > 0 ? `AND a.id = "${res_id}"` : '';
    let sql = `SELECT a.*, b.setup_fee, b.monthly_fee FROM td_contacts_custom a
                JOIN td_order_items_custom b ON a.id=b.restaurant_id
                WHERE b.event_calendar_flag = 'Y' AND approval_flag = 'A' AND payment_flag = 'Y' ${whr}`;
    var data = await F_Select(sql);
    res.send(data);
})

CalenderRouter.post('/approve_cal', async (req, res) => {
    var data = req.body;
    var dt = await ApproveCal(data);
    res.send(dt);
})

// CalenderRouter.post('/calender_dtls', async (req, res) => {
//     var data = req.body;
//     var dt = await InsertCalender(data);
//     res.send(dt);
// })

module.exports = { CalenderRouter }
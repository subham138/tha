const express = require('express');
const dateFormat = require('dateformat');
const { db_Select, db_Insert, db_Delete } = require('../modules/MasterModule');
const { saveQuest, saveQuestLang, saveQuestRest, saveQuestService, sendQuest } = require('../modules/AdminModule');
const { sendQuestEmail, sendQuestEmailtoAdmin } = require('../modules/EmailModule');
const QuestRouter = express.Router();

QuestRouter.get('/quest_dt', async (req, res) => {
    var hotel_id = req.query.hotel_id
    var select = '*',
        table_name = 'td_qustionnaire',
        whr = `hotel_id = ${hotel_id}`,
        order = null;
    var res_dt = await db_Select(select, table_name, whr, order)
    res.send(res_dt)
})

QuestRouter.post('/quest_dt', async (req, res) => {
    var data = req.body
    var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss")
    var table_name = 'td_qustionnaire',
        fields = data.id > 0 ?
            `${data.first_call_dt && data.first_call_dt != 'undefined' ? 'first_call_dt = "' + data.first_call_dt + '",' : ''} admin_note = '${data.admin_note}', modified_by = '${data.user}', modified_dt = '${datetime}'` :
            `(hotel_id${data.first_call_dt && data.first_call_dt != 'undefined' ? ', first_call_dt' : ''}, admin_note, created_by, created_dt)`,
        values = `('${data.hotel_id}'${data.first_call_dt && data.first_call_dt != 'undefined' ? '"' + data.first_call_dt + '"' : ''}, '${data.admin_note}', '${data.user}', '${datetime}')`,
        whr = data.id > 0 ? `id = ${data.id} AND hotel_id = ${data.hotel_id}` : null,
        flag = data.id > 0 ? 1 : 0;
    var res_dt = await db_Insert(table_name, fields, values, whr, flag)
    res.send(res_dt)
})

QuestRouter.get('/get_quest_dt', async (req, res) => {
    var hotel_id = req.query.hotel_id
    var select, table_name, whr, order;
    select = '*'
    table_name = 'td_qustionnaire'
    whr = `hotel_id = ${hotel_id}`
    order = null;
    var res_dt = await db_Select(select, table_name, whr, order)
    if (res_dt.suc > 0) {
        select = '*'
        table_name = 'td_quest_add_lang'
        whr = `hotel_id = ${hotel_id}`
        order = null;
        var add_lang = await db_Select(select, table_name, whr, order)
        res_dt.msg[0]['add_lang'] = add_lang.suc > 0 ? add_lang.msg : []

        select = '*'
        table_name = 'td_quest_res_bars'
        whr = `hotel_id = ${hotel_id}`
        order = null;
        var res_bar_dtls = await db_Select(select, table_name, whr, order)
        res_dt.msg[0]['res_bar'] = res_bar_dtls.suc > 0 ? res_bar_dtls.msg : []

        select = '*'
        table_name = 'td_quest_service'
        whr = `hotel_id = ${hotel_id}`
        order = null;
        serv_dtls = await db_Select(select, table_name, whr, order)
        res_dt.msg[0]['service'] = serv_dtls.suc > 0 ? serv_dtls.msg : []
    }
    res.send(res_dt)
})

QuestRouter.post('/quest', async (req, res) => {
    var data = req.body;
    var res_dt = await saveQuest(data)
    await saveQuestLang(data);
    res.send(res_dt);
})

QuestRouter.post('/quest_rest', async (req, res) => {
    var data = req.body;
    var res_dt = await saveQuestRest(data)
    res.send(res_dt);
})

QuestRouter.post('/quest_serv', async (req, res) => {
    var data = req.body;
    var res_dt = await saveQuestService(data)
    res.send(res_dt);
})

QuestRouter.post('/send_quest', async (req, res) => {
    var data = req.body;
    var res_dt = await sendQuestEmail(data.email, data.path, 'U'); //{ suc: 1 }//
    if (res_dt.suc > 0) {
        await sendQuest(data.hotel_id, data.user)
    }
    res.send(res_dt);
})

QuestRouter.post("/send_quest_to_admin", async (req, res) => {
    var data = req.body;
    var res_dt = await sendQuestEmailtoAdmin(data.email, data.path, 'A', data.hotel_name); //{ suc: 1 }//
    if (res_dt.suc > 0) {
        await sendQuest(data.hotel_id, data.user);
    }
    res.send(res_dt);
});

QuestRouter.get('/quest_dtls_del', async (req, res) => {
    var data = req.query,
        id = data.id,
        flag = data.flag, table_name, whr; // R-> td_quest_res_bars; S-> td_quest_service
    switch (flag) {
        case 'R':
            table_name = 'td_quest_res_bars'
            whr = `id = ${id}`
            break;
        case 'S':
            table_name = 'td_quest_service'
            whr = `id = ${id}`
            break;
        default:
            break;
    }
    var res_dt = await db_Delete(table_name, whr);
    res.send(res_dt)
})

QuestRouter.post('/quest_add_qts', async (req, res) => {
    var data = req.body
    var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss"),
        currDt = dateFormat(new Date(), "yyyy-mm-dd");
    var table_name = 'td_qustionnaire',
        fields = `resend_qts = '${data.resend_qts}'${data.user_type != 'A' ? ', reply_resend_qts = "' + data.reply_resend_qts + '"' : ''}${data.user_type != 'A' ? ', receive_dt = "' + currDt + '"' : ''}, modified_by = '${data.user}', modified_dt = '${datetime}'`,
        values = null,
        whr = `id = ${data.id} AND hotel_id = ${data.hotel_id}`,
        flag = 1;
    var res_dt = await db_Insert(table_name, fields, values, whr, flag)
    res.send(res_dt)
})

module.exports = { QuestRouter }
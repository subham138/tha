const express = require('express'),
    proposalRouter = express.Router(),
    dateFormat = require('dateformat');
const { sendPropEmail } = require('../modules/EmailModule');
const { db_Select, db_Insert, db_Delete } = require('../modules/MasterModule');

proposalRouter.get('/proposal_cust', async (req, res) => {
    var hotel_id = req.query.hotel_id
    var select = '*',
        table_name = 'td_proposal',
        whr = `hotel_id = ${hotel_id}`,
        order = null;
    var res_dt = await db_Select(select, table_name, whr, order)
    res.send(res_dt)
})

proposalRouter.post('/proposal_cust', async (req, res) => {
    var data = req.body
    var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss"),
        currDt = dateFormat(new Date(), "yyyy-mm-dd");
    var table_name = 'td_proposal',
        fields = data.id > 0 ?
            `greeting = '${data.greeting}', dev_dtls = '${data.dev_dtls}' ${data.user_type != 'A' ? ', receive_dt = "' + currDt + '"' : ''}, modified_by = '${data.user}', modified_dt = '${datetime}'` :
            '(hotel_id, greeting, dev_dtls, created_by, created_dt)',
        values = `('${data.hotel_id}', '${data.greeting}', '${data.dev_dtls}', '${data.user}', '${datetime}')`,
        whr = data.id > 0 ? `id = ${data.id} AND hotel_id = ${data.hotel_id}` : null,
        flag = data.id > 0 ? 1 : 0;
    var res_dt = await db_Insert(table_name, fields, values, whr, flag)
    var proposal_id = data.id > 0 ? data.id : res_dt.lastId.insertId
    if (res_dt.suc > 0) {
        await saveProDtls(data.fee_dtls, data.user, proposal_id)
    }
    res.send(res_dt)
})

const saveProDtls = (data, user, proposal_id) => {
    return new Promise(async (resolve, reject) => {
        var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss"),
            res_dt, table_name, fields, values, whr, flag;
        for (let dt of data) {
            table_name = 'td_proposal_dtls'
            fields = dt.id > 0 ? `fee_type = '${dt.fee_type}', fee_amount = '${dt.fee_amount}', remarks = '${dt.notes}', additional_remarks = '${dt.additional_notes}', modified_by = '${user}', modified_dt = '${datetime}'` :
                '(proposal_id, fee_type, fee_amount, remarks, additional_remarks, created_by, created_dt)'
            values = `('${proposal_id}', '${dt.fee_type}', '${dt.fee_amount}', '${dt.notes}', '${dt.additional_notes}', '${user}', '${datetime}')`
            whr = dt.id > 0 ? `id = ${dt.id}` : null
            flag = dt.id > 0 ? 1 : 0
            res_dt = await db_Insert(table_name, fields, values, whr, flag)
            if (res_dt.suc == 0) break;
        }
        resolve(res_dt)
    })
}

proposalRouter.post('/send_proposal', async (req, res) => {
    var data = req.body
    var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss"),
        currDt = dateFormat(new Date(), "yyyy-mm-dd");
    var email_dt = await sendPropEmail(data.email, data.path, data.hotel_name)
    var table_name = 'td_proposal',
        fields = `send_dt = '${currDt}', status = 'P', modified_by = '${data.user}', modified_dt = '${datetime}'`,
        values = null,
        whr = `id = ${data.id} AND hotel_id = ${data.hotel_id}`,
        flag = 1;
    var res_dt = await db_Insert(table_name, fields, values, whr, flag)
    res.send(res_dt)
})

proposalRouter.get('/proposal_dtls', async (req, res) => {
    var hotel_id = req.query.hotel_id, select, table_name, whr, order;
    select = '*'
    table_name = 'td_proposal'
    whr = `hotel_id = ${hotel_id}`
    order = null;
    var res_dt = await db_Select(select, table_name, whr, order)
    var prop_id = res_dt.suc > 0 ? (res_dt.msg.length > 0 ? res_dt.msg[0].id : 0) : 0
    if (prop_id > 0) {
        select = '*'
        table_name = 'td_proposal_dtls'
        whr = `proposal_id = ${prop_id}`
        order = null;
        var propDtls = await db_Select(select, table_name, whr, order)
        res_dt.msg[0]['propDtls'] = propDtls.suc > 0 ? propDtls.msg : []
    }
    res.send(res_dt)
})

proposalRouter.get('/proposal_dtls_del', async (req, res) => {
    var table_name = 'td_proposal_dtls', whr = `id = ${req.query.id}`;
    var res_dt = await db_Delete(table_name, whr)
    res.send(res_dt)
})

proposalRouter.post('/update_proposal', async (req, res) => {
    var data = req.body
    var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss"),
        currDt = dateFormat(new Date(), "yyyy-mm-dd");
    var table_name = 'td_proposal',
        fields = `status = '${data.status}', status_dt = '${currDt}', hotel_remarks = '${data.hotel_remarks}' ${data.user_type != 'U' ? ', admin_notes = "' + data.admin_notes + '"' : ''} ${data.user_type != 'A' ? ', receive_dt = "' + currDt + '"' : ''}, modified_by = '${data.user}', modified_dt = '${datetime}'`,
        values = null,
        whr = `id = ${data.id} AND hotel_id = ${data.hotel_id}`,
        flag = 1;
    var res_dt = await db_Insert(table_name, fields, values, whr, flag)
    res.send(res_dt)
})

module.exports = { proposalRouter }
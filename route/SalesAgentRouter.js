const { db_Insert, db_Select } = require("../modules/MasterModule");
const { Check_Data } = require("../modules/MenuSetupModule");

const express = require("express"),
    SalesAgentRouter = express.Router(),
    dateFormat = require("dateformat");

SalesAgentRouter.get('/sales_agent', async (req, res) => {
    var data = req.query
    // console.log(data);
    var select = "*",
        table_name = "md_sales_agent",
        whr = data.id > 0 ? `id = ${data.id}` : null,
        order = null;
    var res_dt = await db_Select(select, table_name, whr, order);
    res.send(res_dt)
})

SalesAgentRouter.post('/sales_agent', async (req, res) => {
    var data = req.body,
        datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
    var table_name = "md_sales_agent",
        fields =
            data.id > 0
                ? `agent_name = '${data.agent_name}', address = '${data.address}',
        phone_no = '${data.phone}', whatsapp_no = '${data.whatsapp}', 
        email = '${data.email}', start_date = '${data.start_date}', 
        territory = '${data.territory}', frst_comm = '${data.frst_comm}', snd_comm = '${data.snd_comm}', comments = '${data.comments}', 
        modified_by = '${data.user}', modified_dt = '${datetime}'`
                : `(agent_name, address, phone_no, whatsapp_no, email, start_date, territory, commission, comments, created_by, created_dt)`,
        values = `('${data.agent_name}', '${data.address}', '${data.phone}', '${data.whatsapp}',
        '${data.email}', '${data.start_date}', '${data.territory}', '${data.commission}', '${data.comments}', '${data.user}', '${datetime}')`,
        whr = data.id > 0 ? `id = ${data.id}` : null,
        flag = data.id > 0 ? 1 : 0;
    var res_dt = await db_Insert(table_name, fields, values, whr, flag);
    res.send(res_dt);
})

module.exports = { SalesAgentRouter }
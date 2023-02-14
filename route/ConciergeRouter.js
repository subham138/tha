const express = require('express'),
    ConcRouter = express.Router(),
    dateFormat = require("dateformat"),
    bcrypt = require('bcrypt');
const { db_Insert, db_Select, db_Delete } = require('../modules/MasterModule');

const http = require('https'),
    fs = require('fs')

const saveAvatar = (data, img_path) => {
    return new Promise(async (resolve, reject) => {
        var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
        var table_name = 'td_pc_avatar',
            fields = data.id > 0 ? `avt_name = '${data.avt_name}', img_path = '${img_path ? img_path : data.img_path}',
            modified_by = '${data.user}', modified_dt = '${datetime}'` :
                `(hotel_id, avt_name, img_path, created_by, created_dt)`,
            values = `('${data.hotel_id}', '${data.avt_name}', '${img_path ? img_path : data.img_path}', 
            '${data.user}', '${datetime}')`,
            whr = data.id > 0 ? `id = ${data.id}` : null,
            flag = data.id > 0 ? 1 : 0;
        var res_dt = await db_Insert(table_name, fields, values, whr, flag)
        resolve(res_dt)
    })
}

ConcRouter.get('/pc_avatar', async (req, res) => {
    var data = req.query
    var select = '*',
        table_name = 'td_pc_avatar',
        whr = data.id > 0 ? `id = ${data.id}` : `hotel_id = ${data.hotel_id}`,
        order = null;
    var res_dt = await db_Select(select, table_name, whr, order)
    res.send(res_dt)
})

ConcRouter.get('/pc_voice', async (req, res) => {
    var data = req.query
    var select = '*',
        table_name = 'td_pc_voice',
        whr = data.id > 0 ? `id = ${data.id}` : `hotel_id = ${data.hotel_id}${data.srv_res_id ? ` AND srv_res_id=0` : ''}`,
        order = null;
    var res_dt = await db_Select(select, table_name, whr, order)
    res.send(res_dt)
})

ConcRouter.post('/pc_voice', async (req, res) => {
    var data = req.body
    console.log(data);
    var url = data.voice_path
    if (url != '') {
        var urlList = url.split('/')
        var fileName = `audio/${urlList[urlList.length - 1]}`
        const file = fs.createWriteStream(`uploads/${fileName}`);

        http.get(url, (result) => {
            result.pipe(file)
            file.on('finish', async () => {
                file.close()
                console.log('Download Completed');
                let res_dt = await saveVoice(data, fileName)
                res.send(res_dt)
            })
        })
    } else {
        var res_dt = await saveVoice(data, null)
        res.send(res_dt)
    }
})

const saveVoice = async (data, voice_path) => {
    return new Promise(async (resolve, reject) => {
        if (data.id > 0) {
            var dt = await db_Insert(chk_table_name, chk_fields, chk_values, chk_whr, chk_flag)
        }
        var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
        var table_name = 'td_pc_voice',
            fields = data.id > 0 ? `${voice_path ? 'sound_path ="' + voice_path + '"' : ''}${data.active_flag == 'V' ? ', sound_flag = "N"' : (data.active_flag == 'T' ? ', msg_active_flag = "N"' : '')},
            msg_text = '${data.msg_text}', voice_id = '${data.voice_id}', voice_speed = ${data.voice_speed}, use_premium = ${data.use_premium}, voice_path = '${data.voice_path}', modified_by = '${data.user}', modified_dt = '${datetime}'` :
                `(hotel_id, srv_res_flag, srv_res_id${voice_path ? ', sound_path' : ''}, voice_id, voice_speed, use_premium, voice_path
                ${data.active_flag == 'V' ? 'sound_flag' : (data.active_flag == 'T' ? 'msg_active_flag' : '')}, msg_text, created_by, created_dt)`,
            values = `('${data.hotel_id}', '${data.srv_res_flag}', '${data.srv_res_id}'${voice_path ? ',"' + voice_path + '"' : ''}, 
            '${data.voice_id}', ${data.voice_speed}, ${data.use_premium}, '${data.voice_path}'${data.active_flag == 'T' || data.active_flag == 'V' ? ', N' : ''}, '${data.msg_text}', 
            '${data.user}', '${datetime}')`,
            whr = data.id > 0 ? `id = ${data.id}` : null,
            flag = data.id > 0 ? 1 : 0;
        var res_dt = await db_Insert(table_name, fields, values, whr, flag)
        resolve(res_dt)
    })
}

ConcRouter.get('/emp_dtls', async (req, res) => {
    var data = req.query
    // console.log(data);
    var select = '*',
        table_name = 'md_employee',
        whr = data.id > 0 ? `id = ${data.id}` : `hotel_id = ${data.hotel_id} ${data.manager_flag ? 'AND manager_flag = "' + data.manager_flag + '"' : ''} ${data.dept_id ? 'AND emp_dept_id = ' + data.dept_id : ''}`,
        order = null;
    var res_dt = await db_Select(select, table_name, whr, order)
    res.send(res_dt)
})

ConcRouter.post('/emp_dtls', async (req, res) => {
    var data = req.body,
        datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
    var table_name = 'md_employee',
        fields = data.id > 0 ? `emp_id = '${data.emp_id}', emp_name = '${data.emp_name}', emp_dept_id = '${data.dept_id}', 
        mobile_no = '${data.phone_no}', email_id = '${data.email}', manager_flag = '${data.manager_flag}', modified_by = '${data.user}', modified_dt = '${datetime}'` :
            `(hotel_id, emp_id, emp_name, emp_dept_id, mobile_no, email_id, manager_flag, created_by, created_dt)`,
        values = `('${data.hotel_id}', '${data.emp_id}', '${data.emp_name}', '${data.dept_id}', '${data.phone_no}', 
        '${data.email}', '${data.manager_flag}', '${data.user}', '${datetime}')`,
        whr = data.id > 0 ? `id = ${data.id}` : null,
        flag = data.id > 0 ? 1 : 0;
    var res_dt = await db_Insert(table_name, fields, values, whr, flag)
    res.send(res_dt)
})

ConcRouter.get('/emp_dtls_last_id', async (req, res) => {
    var data = req.query
    var select = '(MAX(id) + 1) max_id',
        table_name = 'md_employee',
        whr = `hotel_id = ${data.hotel_id}`,
        order = null;
    var res_dt = await db_Select(select, table_name, whr, order)
    res.send(res_dt)
})

ConcRouter.post('/emp_dtls_del', async (req, res) => {
    var data = req.body
    var dt = {
        Monday: 1,
        Tuesday: 2,
        Wednesday: 3,
        Thursday: 4,
        Friday: 5,
        Saturday: 6,
        Sunday: 7,
    };
    var now_date = dateFormat(new Date(), "dddd"),
        currDate = dt[now_date];

    var select = 'COUNT(id) cnt_id',
        table_name = 'td_emp_schedule',
        whr = `emp_code = ${data.id} AND date_on_off = 'Y' AND day_dt >= '${currDate}'`,
        order = null;
    var res_dt = await db_Select(select, table_name, whr, order)
    if (res_dt.suc > 0) {
        if (res_dt.msg[0].cnt_id > 0) {
            res_dt = { suc: 0, msg: 'Manager is already in roster' }
        } else {
            table_name = 'md_employee'
            whr = `id = ${data.id}`
            res_dt = await db_Delete(table_name, whr)
        }
        // res_dt = suc: res_dt.msg[0].cnt_id
    }
    res.send(res_dt)
})

ConcRouter.post('/dept_user_dtls', async (req, res) => {
    var data = req.body,
        datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss"), res_dt;
    // console.log(data);
    if (data.id == 0) {
        var table_name = 'td_guest_user',
            fields = '(hotel_id, user_name, user_type, mobile_no, email_id, group_leader_flag, dept_id, created_by, created_dt)',
            values = `('${data.hotel_id}', '${data.emp_name}', '${data.user_type}', '${data.phone_no}', '${data.email}', '${data.group_leader_flag}', ${data.dept_id}, '${data.user}', '${datetime}')`,
            whr = null,
            flag = 0
        res_dt = await db_Insert(table_name, fields, values, whr, flag)
    }
    var emp_id = data.id > 0 ? data.id : (res_dt.suc > 0 ? res_dt.lastId.insertId : 0)
    if (emp_id > 0) {
        if (data.msg_type.length > 0) {
            for (let msg of data.msg_type) {
                for (let day of data.day_dt) {
                    select = `count(id) cnt_id, id`
                    table_name = 'td_emp_schedule'
                    whr = `hotel_id = ${data.hotel_id} AND msg_type = '${msg.id}' AND emp_id = '${emp_id}' AND day_dt = '${day.code}'`
                    let dt = await db_Select(select, table_name, whr, null)
                    table_name = 'td_emp_schedule'
                    fields = dt.suc > 0 && dt.msg[0].cnt_id > 0 ? `date_on_off = '${day.off_on ? 'Y' : 'N'}', start_time = '${day.start}', end_time = '${day.end}', modified_by = '${data.user}', modified_dt = '${datetime}'` :
                        '(hotel_id, msg_type, emp_id, emp_code, day_dt, date_on_off, start_time, end_time, created_by, created_dt)'
                    values = `('${data.hotel_id}', '${msg.id}', '${emp_id}', '${data.emp_id}', '${day.code}', '${day.off_on ? 'Y' : 'N'}', '${day.start}', '${day.end}', '${data.user}', '${datetime}')`
                    whr = dt.suc > 0 && dt.msg[0].cnt_id > 0 ? `id = ${dt.msg[0].id}` : null
                    flag = dt.suc > 0 && dt.msg[0].cnt_id > 0 ? 1 : 0
                    res_dt = await db_Insert(table_name, fields, values, whr, flag)
                }
            }
        }
    }
    res.send(res_dt)
})

ConcRouter.get('/dept_user_dtls', async (req, res) => {
    var data = req.query
    var select = 'b.id, a.hotel_id, b.user_name, b.user_type, c.dept_name, b.dept_id',
        table_name = 'td_emp_schedule a, td_guest_user b, md_department c',
        whr = `a.emp_id=b.id AND b.dept_id=c.id ${data.hotel_id > 0 ? 'AND a.hotel_id =' + data.hotel_id : ''} ${data.id > 0 ? 'AND b.id =' + data.id : ''}`,
        order = 'GROUP BY a.emp_id'
    var res_dt = await db_Select(select, table_name, whr, order)
    if (res_dt.suc > 0 && res_dt.msg.length > 0) {
        for (let dt of res_dt.msg) {
            select = 'DISTINCT msg_type'
            table_name = 'td_emp_schedule'
            whr = `hotel_id = ${data.hotel_id} AND emp_id = ${dt.id}`
            order = null
            let msg_list = await db_Select(select, table_name, whr, order)
            dt['msg_type'] = msg_list.suc > 0 && msg_list.msg.length > 0 ? msg_list.msg : null;
        }
        if (data.id > 0) {
            select = 'id, day_dt, date_on_off, start_time, end_time'
            table_name = 'td_emp_schedule'
            whr = `hotel_id = ${data.hotel_id} AND emp_id = ${data.id}`
            order = 'GROUP BY day_dt, emp_id order BY emp_id,day_dt'
            let day_list = await db_Select(select, table_name, whr, order)
            res_dt.msg[0]['day_dt'] = day_list.suc > 0 && day_list.msg.length > 0 ? day_list.msg : null;
        }
    }
    res.send(res_dt)
})

// ConcRouter.post('/dept_send_email', async (req, res) => {
//     var data = req.body
//     var table_name = '',
//         fields,
//         values,
//         whr,
//         flag;
// })

ConcRouter.post('/dept_login', async (req, res) => {
    var data = req.body,
        msg_dt;
    var select = '*',
        table_name = 'td_guest_user',
        whr = `email_id = '${data.email_id}'`,
        order = null
    var res_dt = await db_Select(select, table_name, whr, order)
    if (res_dt.suc > 0 && res_dt.msg.length > 0) {
        if (await bcrypt.compare(data.password, res_dt.msg[0].password)) {
            msg_dt = { suc: 1, msg: 'Successfully Logged in', user_dt: res_dt.msg[0] }
            if (res_dt.msg[0].user_type != 'E') {
                select = 'b.*'
                table_name = 'td_guest_user a, td_lodgging b'
                whr = `a.id=b.guest_id AND a.id = ${res_dt.msg[0].id}`
                order = null
                var res_dtls = await db_Select(select, table_name, whr, order)
                if (res_dtls.suc > 0 && res_dtls.msg.length > 0) {
                    msg_dt['lodgging_dt'] = res_dtls.msg[0]
                } else {
                    msg_dt['lodgging_dt'] = null
                }
            }
        } else {
            msg_dt = { suc: 0, msg: 'Please Check Your userID or Password' }
        }
    } else {
        msg_dt = { suc: 0, msg: 'No user found' }
    }
    res.send(msg_dt)
})

ConcRouter.get('/test_file_save', async (req, res) => {
    var url = 'https://customapi.shoplocal-lagunabeach.com/1_R_1_voice_mysong.mp3'
    var urlList = url.split('/')
    var fileName = urlList[urlList.length - 1]
    const file = fs.createWriteStream(fileName);

    const request = http.get(url, (result) => {
        result.pipe(file)
        file.on('finish', () => {
            file.close()
            console.log('Download Completed');
            res.send('Download Completed')
        })
    })
})

module.exports = { ConcRouter, saveAvatar, saveVoice }
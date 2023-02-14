const db = require('../core/db');
const dateFormat = require('dateformat');
var request = require('request');
const { F_Select } = require('./MenuSetupModule');
const { RejectPayProposal } = require('./EmailModule');
const { db_Select } = require('./MasterModule');
var data = '';

const GetPackageData = (res_id) => {
    var sql = `SELECT id, restaurant_id, package_name, no_of_menu, special_menu, setup_fee, monthly_fee FROM td_order_items_custom WHERE restaurant_id = ${res_id}`;
    var dt = '';
    return new Promise((resolve, reject) => {
        db.query(sql, (err, result) => {
            if (err) { console.log(err); dt = { suc: 0, msg: JSON.stringify(err) }; }
            else {
                if (result.length > 0) {
                    dt = { suc: 1, msg: result };
                } else {
                    dt = { suc: 2, msg: 'No Data Found' };
                }
            }
            resolve(dt);
        })
    })
}

const PackageSave = async (data) => {
    var check = await CheckPackage(data.res_id);
    var user = 'admin@gmail.com';
    var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
    var sql = '';
    if (check > 1) {
        sql = `INSERT INTO td_order_items_custom (restaurant_id, package_name, no_of_menu, special_menu, setup_fee, monthly_fee, created_by, created_dt) VALUES 
        ("${data.res_id}", "${data.Serial_no}", "${data.Menu_number}", "${data.Special_Menu}", "${data.SetUp_Fee}", "${data.Monthly_Fee}", "${user}", "${datetime}")`;
    } else {
        sql = `UPDATE td_order_items_custom SET no_of_menu= "${data.Menu_number}", special_menu= "${data.Special_Menu}", setup_fee= "${data.SetUp_Fee}", monthly_fee= "${data.Monthly_Fee}", modified_by= "${user}", modified_dt= "${datetime}" WHERE restaurant_id = ${data.res_id}`;
    }
    return new Promise((resolve, reject) => {
        db.query(sql, (err, result) => {
            if (err) {
                console.log(err);
                data = { suc: 0, msg: JSON.stringify(err) }
            } else {
                data = { suc: 1, msg: 'Successfully Inserted !!' };
            }
            resolve(data);
        })
    })
}

const CheckPackage = (res_id) => {
    var sql = `SELECT * FROM td_order_items_custom WHERE restaurant_id = ${res_id}`;
    return new Promise((resolve, reject) => {
        db.query(sql, (err, result) => {
            if (err) { console.log(err); data = 0; }
            else {
                if (result.length > 0) {
                    data = 1;
                } else {
                    data = 2;
                }
            }
            resolve(data);
        })
    })
}

const GetResult = (fields, tb_name, whr, group) => {
    group = group ? group : '';
    var sql = `SELECT ${fields} FROM ${tb_name} ${whr} ${group}`;
    return new Promise((resolve, reject) => {
        db.query(sql, (err, result) => {
            if (err) { console.log(err); data = { suc: 0, msg: JSON.stringify(err) }; }
            else {
                if (result.length > 0) {
                    data = { suc: 1, msg: result };
                } else {
                    data = { suc: 2, msg: 'No Data Found' };
                }
            }
            resolve(data);
        })
    })
}

const PromoSave = async (data) => {
    var check = await CheckData(data.res_id, tb_name = 'td_order_items_custom');
    var user = 'admin@gmail.com';
    var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
    var sql = '',
        field = data.serial_no == 4 ? 'birth_calendar' : 'event_calendar';
    if (check > 1) {
        sql = `INSERT INTO td_order_items_custom (restaurant_id, ${field}_flag, ${field}_free_flag, ${field}_price, created_by, created_dt) VALUES 
        ("${data.res_id}", "${data.checked}", "${data.free}", "${data.price}", "${user}", "${datetime}")`;
    } else {
        sql = `UPDATE td_order_items_custom SET ${field}_flag = "${data.checked}", ${field}_free_flag= "${data.free}", ${field}_price= "${data.price}", modified_by= "${user}", modified_dt= "${datetime}" WHERE restaurant_id = ${data.res_id}`;
    }
    return new Promise((resolve, reject) => {
        db.query(sql, (err, lastId) => {
            if (err) {
                console.log(err);
                data = { suc: 0, msg: JSON.stringify(err) }
            } else {
                data = { suc: 1, msg: 'Successfully Inserted !!' };
            }
            resolve(data);
        })
    })
}

const HolderClingSave = async (data) => {
    console.log(data);
    var check = await CheckData(data.res_id, tb_name = 'td_order_items_custom');
    var sql = '';
    var user = 'admin@gmail.com',
        free_flag = data.per_Holder_Price > 0 ? 'N' : 'Y',
        price = data.per_Holder_Price > 0 ? data.per_Holder_Price : 0,
        field = data.serial_no == 6 ? 'table_top_6' : (data.serial_no == '7' ? 'table_top_7' : (data.serial_no == 8 ? 'table_top_8' : 'window_cling_9'));
    var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
    if (check > 1) {
        sql = `INSERT INTO td_order_items_custom (restaurant_id, ${field}, ${field}_price, created_by, created_dt) VALUES ("${data.res_id}", "${data.qty > 0 ? data.qty : 0}", "${price}", "${user}", "${datetime}")`;
    } else {
        sql = `UPDATE td_order_items_custom SET ${field} = "${data.qty > 0 ? data.qty : 0}", ${field}_price= "${price}", modified_by= "${user}", modified_dt= "${datetime}" WHERE restaurant_id = ${data.res_id}`;
    }
    return new Promise((resolve, reject) => {
        db.query(sql, (err, lastId) => {
            if (err) {
                console.log(err);
                data = { suc: 0, msg: JSON.stringify(err) }
            } else {
                data = { suc: 1, msg: 'Successfully Inserted !!' };
            }
            resolve(data);
        })
    })
}

const CheckData = (res_id, tb_name) => {
    var sql = `SELECT * FROM ${tb_name} WHERE restaurant_id = ${res_id}`;
    return new Promise((resolve, reject) => {
        db.query(sql, (err, result) => {
            if (err) { console.log(err); data = 0; }
            else {
                if (result.length > 0) {
                    data = 1;
                } else {
                    data = 2;
                }
            }
            resolve(data);
        })
    })
}

const UpdateApproval = (flag, res_id) => {
    var sql = `UPDATE td_contacts_custom SET approval_flag = '${flag}' WHERE id = "${res_id}"`;
    return new Promise((resolve, reject) => {
        db.query(sql, (err, lastId) => {
            if (err) {
                console.log(err);
                data = { suc: 0, msg: JSON.stringify(err) }
            } else {
                data = { suc: 1, msg: 'Successfully Updated !!' };
            }
            resolve(data);
        })
    })
}

const F_Delete = (tb_name, whr) => {
    let sql = `DELETE FROM ${tb_name} ${whr}`;
    return new Promise((resolve, reject) => {
        db.query(sql, (err, lastId) => {
            if (err) {
                console.log(err);
                data = { suc: 0, msg: JSON.stringify(err) }
            } else {
                data = { suc: 1, msg: 'Successfully Deleted !!' };
            }
            resolve(data);
        })
    })
}

const SaveEmailBody = async (data) => {
    var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss"),
        sql = '';
    let chk_sql = `SELECT COUNT(id) as cunt_dt FROM md_config_email WHERE email_type_id = ${data.email_type}`;
    var chk_dt = await F_Select(chk_sql);
    if (chk_dt.msg[0].cunt_dt > 0) {
        sql = `UPDATE md_config_email SET email_body = '${data.body}', modified_by = "${data.user}", modified_dt = "${datetime}"
        WHERE email_type_id = ${data.email_type}`;
    } else {
        sql = `INSERT INTO md_config_email (email_type_id, email_body, created_by, created_dt) VALUES 
        (${data.email_type}, '${data.body}', "${data.user}", "${datetime}")`
    }
    return new Promise((resolve, reject) => {
        db.query(sql, (err) => {
            if (err) {
                console.log(err);
                data = { suc: 0, msg: JSON.stringify(err) }
            } else {
                data = { suc: 1, msg: 'Successfully Inserted !!' };
            }
            resolve(data);
        })
    })
}

const SaveMenuInfo = (data) => {
    var sql = '',
        datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
    if (data.id > 0) {
        sql = `UPDATE md_menu SET info = "${data.info}", modified_by = '${data.user}', modified_dt = "${datetime}" WHERE id = ${data.id}`;
    }
    return new Promise((resolve, reject) => {
        db.query(sql, (err) => {
            if (err) {
                console.log(err);
                data = { suc: 0, msg: JSON.stringify(err) }
            } else {
                data = { suc: 1, msg: 'Successfully Inserted !!' };
            }
            resolve(data);
        })
    })
}

const ConfigMenu = async (data) => {
    let chk_sql = `SELECT id FROM md_config_menu`;
    var chk_dt = await F_Select(chk_sql);
    var id = chk_dt.msg.length > 0 ? chk_dt.msg[0].id : 0,
        sql = '',
        res = '';
    if (chk_dt.msg.length > 0) {
        sql = `UPDATE md_config_menu SET footer_color = "${data.foo_col}", footer_content = '${data.foo_con}', text_color = "${data.txt_col}", greet_text_color = "${data.greet_col}" WHERE id = ${id}`
    } else {
        sql = `INSERT INTO md_config_menu (footer_color, footer_content, text_color, greet_text_color) 
        VALUES ("${data.foo_col}", '${data.foo_con}', "${data.txt_col}", "${data.greet_col}")`
    }
    return new Promise((resolve, reject) => {
        db.query(sql, (err) => {
            if (err) {
                console.log(err);
                res = { suc: 0, msg: JSON.stringify(err) }
            } else {
                res = { suc: 1, msg: 'Successfully Inserted !!' };
            }
            resolve(res);
        })
    })
}

const DelRes = (res_id) => {
    let sql = `UPDATE td_users SET active_flag = 'N' WHERE restaurant_id = ${res_id}`;
    return new Promise((resolve, reject) => {
        db.query(sql, (err) => {
            if (err) {
                console.log(err);
                res = { suc: 0, msg: JSON.stringify(err) }
            } else {
                res = { suc: 1, msg: 'Successfully Deleted !!' };
            }
            resolve(res);
        })
    })
}

const DelResCustom = (res_id) => {
    let sql = `UPDATE td_contacts_custom SET active_user = 'N' WHERE id = ${res_id}`;
    return new Promise((resolve, reject) => {
        db.query(sql, (err) => {
            if (err) {
                console.log(err);
                res = { suc: 0, msg: JSON.stringify(err) }
            } else {
                res = { suc: 1, msg: 'Successfully Deleted !!' };
            }
            resolve(res);
        })
    })
}

const HelpTextSave = async (data) => {
    var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
    let chk_sql = `SELECT id, count(id) as chk_cunt FROM md_config_inst`;
    var chk_dt = await F_Select(chk_sql);
    var sql = '';
    if (chk_dt.msg[0].chk_cunt > 0) {
        sql = `UPDATE md_config_inst SET menu_help = "${data.menu_help}", calender_help = "${data.cal_help}", qr_help = "${data.qr_help}", birthday_help = "${data.bir_help}", cantact_info_help = "${data.con_help}", modified_by = "${data.user}", modified_dt = "${datetime}" WHERE id = ${chk_dt.msg[0].id}`;
    } else {
        sql = `INSERT INTO md_config_inst (menu_help, calender_help, qr_help, birthday_help, cantact_info_help, created_by, created_dt) 
        VALUES ("${data.menu_help}", "${data.cal_help}", "${data.qr_help}", "${data.bir_help}", "${data.con_help}", "${data.user}", "${datetime}")`
    }
    return new Promise((resolve, reject) => {
        db.query(sql, (err) => {
            if (err) {
                console.log(err);
                res = { suc: 0, msg: JSON.stringify(err) }
            } else {
                res = { suc: 1, msg: 'Successfully Inserted !!' };
            }
            resolve(res);
        })
    })
}

const OtherText = async (data) => {
    var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
    let chk_sql = `SELECT id, count(id) as chk_cunt FROM md_config_inst`;
    var chk_dt = await F_Select(chk_sql);
    var sql = '';
    if (chk_dt.msg[0].chk_cunt > 0) {
        sql = `UPDATE md_config_inst SET birthday_body = "${data.bir_text}", event_body = "${data.event_text}", modified_by = "${data.user}", modified_dt = "${datetime}" WHERE id = ${chk_dt.msg[0].id}`;
    } else {
        sql = `INSERT INTO md_config_inst (birthday_body, event_body, created_by, created_dt)
        VALUES ("${data.bir_text}", "${data.event_text}", "${data.user}", "${datetime}")`
    }
    return new Promise((resolve, reject) => {
        db.query(sql, (err) => {
            if (err) {
                console.log(err);
                res = { suc: 0, msg: JSON.stringify(err) }
            } else {
                res = { suc: 1, msg: 'Successfully Inserted !!' };
            }
            resolve(res);
        })
    })
}

const DifImgSave = async (filename, user_name) => {
    var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
    let chk_sql = `SELECT id, count(id) as chk_cunt FROM md_config_inst`;
    var chk_dt = await F_Select(chk_sql);
    var sql = '';
    if (chk_dt.msg[0].chk_cunt > 0) {
        sql = `UPDATE md_config_inst SET event_img = "${filename}", modified_by = "${user_name}", modified_dt = "${datetime}" WHERE id = ${chk_dt.msg[0].id}`;
    } else {
        sql = `INSERT INTO md_config_inst (event_img, created_by, created_dt)
        VALUES ("${filename}", "${user_name}", "${datetime}")`
    }
    return new Promise((resolve, reject) => {
        db.query(sql, (err) => {
            if (err) {
                console.log(err);
                res = { suc: 0, msg: JSON.stringify(err) }
            } else {
                res = { suc: 1, msg: 'Successfully Inserted !!' };
            }
            resolve(res);
        })
    })
}

const DifCovImgSave = async (filename, user_name) => {
    var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
    let chk_sql = `SELECT id, count(id) as chk_cunt FROM md_config_inst`;
    var chk_dt = await F_Select(chk_sql);
    var sql = '';
    if (chk_dt.msg[0].chk_cunt > 0) {
        sql = `UPDATE md_config_inst SET cover_img = "${filename}", modified_by = "${user_name}", modified_dt = "${datetime}" WHERE id = ${chk_dt.msg[0].id}`;
    } else {
        sql = `INSERT INTO md_config_inst (cover_img, created_by, created_dt)
        VALUES ("${filename}", "${user_name}", "${datetime}")`
    }
    console.log(sql);
    return new Promise((resolve, reject) => {
        db.query(sql, (err) => {
            if (err) {
                console.log(err);
                res = { suc: 0, msg: JSON.stringify(err) }
            } else {
                res = { suc: 1, msg: 'Successfully Inserted !!' };
            }
            resolve(res);
        })
    })
}

const OrderConfSave = async (data) => {
    var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
    let chk_sql = `SELECT id, count(id) as chk_cunt FROM md_config_inst`;
    var chk_dt = await F_Select(chk_sql);
    var sql = '';
    if (chk_dt.msg[0].chk_cunt > 0) {
        sql = `UPDATE md_config_inst SET order_conf = "${data.order_conf}", modified_by = "${data.user}", modified_dt = "${datetime}" WHERE id = ${chk_dt.msg[0].id}`;
    } else {
        sql = `INSERT INTO md_config_inst (order_conf, created_by, created_dt)
        VALUES ("${data.order_conf}", "${data.user}", "${datetime}")`
    }
    return new Promise((resolve, reject) => {
        db.query(sql, (err) => {
            if (err) {
                console.log(err);
                res = { suc: 0, msg: JSON.stringify(err) }
            } else {
                res = { suc: 1, msg: 'Successfully Inserted !!' };
            }
            resolve(res);
        })
    })
}

const GenerateBitlyUrl = async (url, res_id) => {
    var res = '',
        data = '';

    var options = {
        'method': 'POST',
        'url': 'https://api-ssl.bitly.com/v4/shorten',
        'headers': {
            'Authorization': '9f526219992d43ac22e50e289fb09fd7c9cc25a2',
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            "domain": "bit.ly",
            "long_url": url
        })

    };
    // console.log({body: options.body});
    return new Promise((resolve, reject) => {
        request(options, function (error, response) {
            if (error) throw new Error(error);
            // console.log({ response: response.body });
            data = JSON.parse(response.body);
            // console.log({ data_link: data.link });
            if (data.id) {
                var link = data.link; //'https://' + data.id;
                // console.log({ link });
                var sql = `UPDATE md_url_custom SET bitly_url = "${link}" WHERE restaurant_id = "${res_id}"`;
                // console.log({ sql });
                // return new Promise((resolve, reject) => {
                db.query(sql, (err, lastId) => {
                    if (err) {
                        console.log(err);
                        res = { suc: 0, msg: JSON.stringify(err) }
                    } else {
                        res = { suc: 1, msg: link };
                    }
                    // console.log({ res });
                    resolve(res);
                })
                // })
            } else {
                // return new Promise((resolve, reject) => {
                res = { suc: 0, msg: 'No URL Generated !!' };
                resolve(res);
                // })
            }
        });
    })

}

const ConfirmOrder = (data) => {
    var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
    let sql = `UPDATE td_order_items SET confirm_flag = 'Y', modified_by = "${data.user}", modified_dt = "${datetime}" WHERE restaurant_id = ${data.res_id}`
    return new Promise((resolve, reject) => {
        db.query(sql, (err, lastId) => {
            if (err) {
                console.log(err);
                res = { suc: 0, msg: JSON.stringify(err) }
            } else {
                res = { suc: 1, msg: 'Successfully Inserted !!' };
            }
            // console.log({ res });
            resolve(res);
        })
    })
}

const CreateVenue = (data) => {
    var sql = '';
    var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
    if (data.id > 0) {
        sql = `UPDATE td_venue_custom SET venue_name = "${data.venue_name}", modified_by = "${data.user}", modified_dt = "${datetime}" WHERE id = ${data.id}`;
    } else {
        sql = `INSERT INTO td_venue_custom (restaurant_id, venue_name, created_by, created_dt) VALUES 
        ("${data.res_id}", "${data.venue_name}", "${data.user}", "${datetime}")`;
    }
    return new Promise((resolve, reject) => {
        db.query(sql, (err, lastId) => {
            if (err) {
                console.log(err);
                res = { suc: 0, msg: JSON.stringify(err) }
            } else {
                res = { suc: 1, msg: 'Successfully Inserted !!' };
            }
            // console.log({ res });
            resolve(res);
        })
    })
}

const DeleteVenue = (id) => {
    var sql = `DELETE FROM td_venue_custom WHERE id = ${id}`;
    return new Promise((resolve, reject) => {
        db.query(sql, (err, lastId) => {
            if (err) {
                console.log(err);
                res = { suc: 0, msg: JSON.stringify(err) }
            } else {
                res = { suc: 1, msg: 'Successfully Deleted !!' };
            }
            // console.log({ res });
            resolve(res);
        })
    })
}

const CreateVenueMenu = (data) => {
    var sql = '';
    var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
    if (data.id > 0) {
        sql = `UPDATE td_venue_menu_custom SET venue_id = "${data.venue_id}", menu_name = "${data.menu_name}", modified_by = "${data.user}", modified_dt = "${datetime}" WHERE id = ${data.id}`;
    } else {
        sql = `INSERT INTO td_venue_menu_custom (restaurant_id, venue_id, menu_name, created_by, created_dt) VALUES 
        ("${data.res_id}", "${data.venue_id}", "${data.menu_name}", "${data.user}", "${datetime}")`;
    }
    return new Promise((resolve, reject) => {
        db.query(sql, (err, lastId) => {
            if (err) {
                console.log(err);
                res = { suc: 0, msg: JSON.stringify(err) }
            } else {
                res = { suc: 1, msg: 'Successfully Inserted !!' };
            }
            // console.log({ res });
            resolve(res);
        })
    })
}

const DeleteVenueMenu = (id) => {
    var sql = `DELETE FROM td_venue_menu_custom WHERE id = ${id}`;
    return new Promise((resolve, reject) => {
        db.query(sql, (err, lastId) => {
            if (err) {
                console.log(err);
                res = { suc: 0, msg: JSON.stringify(err) }
            } else {
                res = { suc: 1, msg: 'Successfully Deleted !!' };
            }
            // console.log({ res });
            resolve(res);
        })
    })
}

const ApproveProposal = async (data) => {
    var flag = data.flag,
        sql = '',
        email = '',
        res = '';
    var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
    if (flag == 'R') {
        email = await RejectPayProposal(data.res_id, data.en_dt, data.remarks);
        sql = `UPDATE td_order_items_custom SET remarks = "${data.remarks}", modified_by = "${data.user}", modified_dt = "${datetime}" WHERE restaurant_id = "${data.res_id}"`;
    } else {
        email = '';
        sql = `UPDATE td_contacts_custom SET proposal_status = "${flag}", modified_by = "${data.user}", modified_dt = "${datetime}" WHERE id = "${data.res_id}"`
    }
    return new Promise((resolve, reject) => {
        db.query(sql, (err, lastId) => {
            if (err) {
                console.log(err);
                res = { suc: 0, msg: JSON.stringify(err) }
            } else {
                res = { suc: 1, msg: 'Successfully Deleted !!', email_res: email };
            }
            resolve(res);
        })
    })
}

const sendQuest = async (id, user) => {
    var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss"),
        currDate = dateFormat(new Date(), "yyyy-mm-dd"),
        res, sql;
    var select = `COUNT(*) chk_dt`,
        table_name = `td_qustionnaire`,
        whr = `hotel_id = ${id}`,
        order = null;
    var chk = await db_Select(select, table_name, whr, order)
    if (chk.suc > 0) {
        if (chk.msg[0].chk_dt > 0) {
            sql = `UPDATE td_qustionnaire SET send_dt = "${currDate}", modified_by = "${user}", modified_dt = "${datetime}" WHERE hotel_id = "${id}"`;
        } else {
            sql = `INSERT INTO td_qustionnaire (hotel_id, send_dt, created_by, created_dt) VALUES ("${id}", "${currDate}", "${user}", "${datetime}")`
        }
    } else {
        sql = `INSERT INTO td_qustionnaire (hotel_id, send_dt, created_by, created_dt) VALUES ("${id}", "${currDate}", "${user}", "${datetime}")`
    }
    // var sql = `UPDATE td_qustionnaire SET questionnaire_send = "Y", questionnaire_send_dt = "${datetime}", modified_by = "${user}", modified_dt = "${datetime}" WHERE id = "${id}"`;
    return new Promise((resolve, reject) => {
        db.query(sql, (err, lastId) => {
            if (err) {
                console.log(err);
                res = { suc: 0, msg: JSON.stringify(err) };
            } else {
                res = { suc: 1, msg: "Successfully Deleted !!" };
            }
            resolve(res);
        });
    });
};

const saveQuest = async (data) => {
    var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss"), sql;
    if (data.id > 0) {
        sql = `UPDATE td_qustionnaire SET num_of_rooms = ${data.num_of_rooms}, platform_lang = '${data.platform_lang}',
         primary_lang = '${data.primary_lang}', add_lang_platform = '${data.add_lang_paltform}', num_of_res = ${data.num_of_res}, 
         num_of_bars = ${data.num_of_bars}, hotel_part_of_chain = '${data.chain}', quote = '${data.quote}', comments = '${datetime}' WHERE id = ${data.id}`
    } else {
        sql = `INSERT INTO td_qustionnaire (hotel_id, num_of_rooms, platform_lang, primary_lang, add_lang_platform, num_of_res, num_of_bars, hotel_part_of_chain, quote, comments, created_by, created_dt) VALUES 
    (${data.res_id}, ${data.num_of_rooms}, '${data.platform_lang}', '${data.primary_lang}', '${data.add_lang_paltform}', ${data.num_of_res}, ${data.num_of_bars}, '${data.chain}', '${data.quote}', '${data.comments}', '${data.user}', '${datetime}')`;
    }

    return new Promise((resolve, reject) => {
        db.query(sql, (err, lastId) => {
            if (err) {
                console.log(err);
                res = { suc: 0, msg: JSON.stringify(err) }
            } else {
                res = { suc: 1, msg: 'Successfully Inserted !!' };
            }
            resolve(res);
        })
    })
}

const saveQuestLang = async (data) => {
    var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
    var sql, res;
    return new Promise((resolve, reject) => {
        for (let lang of data.lang) {
            sql = `INSERT INTO td_quest_add_lang (hotel_id, lang_id, created_by, created_dt) VALUES 
    (${data.res_id}, '${lang.lang_id}', '${data.user}', '${datetime}')`;
            db.query(sql, (err, lastId) => {
                if (err) {
                    console.log(err);
                    res = { suc: 0, msg: JSON.stringify(err) }
                } else {
                    res = { suc: 1, msg: 'Successfully Inserted !!' };
                }
            })
            // if (res.suc == 0) break;
        }
        resolve(res)
    })
}

const saveQuestRest = async (data) => {
    var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
    var sql, res;
    return new Promise((resolve, reject) => {
        for (let dt of data.res_dt) {
            if (dt.id > 0) {
                sql = `UPDATE td_quest_res_bars SET 
                hotel_type = '${dt.hotel_type}', name = '${dt.name}', breakfast = '${dt.breakfast && dt.breakfast != '' ? 'Y' : 'N'}', 
                lunch = '${dt.lunch && dt.lunch != '' ? 'Y' : 'N'}', dinner = '${dt.dinner && dt.dinner != '' ? 'Y' : 'N'}', 
                brunch = '${dt.brunch && dt.brunch != '' ? 'Y' : 'N'}', bar_menu = '${dt.bar_menu && dt.bar_menu != '' ? 'Y' : 'N'}', 
                special_menu = '${dt.special_menu && dt.special_menu != '' ? 'Y' : 'N'}', chat_option = '${dt.chat_option}', 
                reservation = '${dt.reservation}', reservation_paltform = '${dt.reservation_paltform}', reservation_option = '${dt.reservation_option}', 
                modified_by = '${data.user}', modified_dt = '${datetime}' 
                WHERE id = ${dt.id}`
            } else {
                sql = `INSERT INTO td_quest_res_bars (hotel_id, hotel_type, name, breakfast, lunch, dinner, brunch, bar_menu, special_menu, chat_option, reservation, reservation_paltform, reservation_option, created_by, created_dt) VALUES 
    (${data.res_id}, '${dt.hotel_type}', '${dt.name}', '${dt.breakfast && dt.breakfast != '' ? 'Y' : 'N'}', '${dt.lunch && dt.lunch != '' ? 'Y' : 'N'}', '${dt.dinner && dt.dinner != '' ? 'Y' : 'N'}', '${dt.brunch && dt.brunch != '' ? 'Y' : 'N'}', '${dt.bar_menu && dt.bar_menu != '' ? 'Y' : 'N'}', '${dt.special_menu && dt.special_menu != '' ? 'Y' : 'N'}', '${dt.chat_option}', '${dt.reservation}', '${dt.reservation_paltform}', '${dt.reservation_option}', '${data.user}', '${datetime}')`;
            }

            db.query(sql, (err, lastId) => {
                if (err) {
                    console.log(err);
                    res = { suc: 0, msg: JSON.stringify(err) }
                } else {
                    res = { suc: 1, msg: 'Successfully Inserted !!' };
                }
            })
            // if (res.suc == 0) break;
        }
        resolve(res)
    })
}

const saveQuestService = async (data) => {
    var datetime = dateFormat(new Date(), "yyyy-mm-dd HH:MM:ss");
    var sql, res;
    return new Promise((resolve, reject) => {
        for (let dt of data.serv_dt) {
            if (dt.id > 0) {
                sql = `UPDATE td_quest_service SET 
                service_name = '${dt.service_name}', breakfast = '${dt.breakfast && dt.breakfast != '' ? 'Y' : 'N'}', 
                lunch = '${dt.lunch && dt.lunch != '' ? 'Y' : 'N'}', dinner = '${dt.dinner && dt.dinner != '' ? 'Y' : 'N'}', 
                brunch = '${dt.brunch && dt.brunch != '' ? 'Y' : 'N'}', special = '${dt.special && dt.special != '' ? 'Y' : 'N'}', 
                calendar = '${dt.calendar && dt.calendar != '' ? 'Y' : 'N'}', menu_service_list = '${dt.menu_service_list && dt.menu_service_list != '' ? 'Y' : 'N'}', 
                chat_type = '${dt.chat_type}', comments = '${dt.comments}', modified_by = '${data.user}', modified_dt = '${datetime}' 
                WHERE id = ${dt.id}`
            } else {
                sql = `INSERT INTO td_quest_service (hotel_id, service_name, breakfast, lunch, dinner, brunch, special, calendar, menu_service_list, chat_type, comments, created_by, created_dt) VALUES 
    (${data.res_id}, '${dt.service_name}', '${dt.breakfast && dt.breakfast != '' ? 'Y' : 'N'}', '${dt.lunch && dt.lunch != '' ? 'Y' : 'N'}', '${dt.dinner && dt.dinner != '' ? 'Y' : 'N'}', '${dt.brunch && dt.brunch != '' ? 'Y' : 'N'}', '${dt.special && dt.special != '' ? 'Y' : 'N'}', '${dt.calendar && dt.calendar != '' ? 'Y' : 'N'}', '${dt.menu_service_list && dt.menu_service_list != '' ? 'Y' : 'N'}', '${dt.chat_type}', '${dt.comments}', '${data.user}', '${datetime}')`;
            }

            db.query(sql, (err, lastId) => {
                if (err) {
                    console.log(err);
                    res = { suc: 0, msg: JSON.stringify(err) }
                } else {
                    res = { suc: 1, msg: 'Successfully Inserted !!' };
                }
            })
            // if (res.suc == 0) break;
        }
        resolve({ suc: 1, msg: 'Successfully Inserted !!' })
    })
}

module.exports = { PackageSave, GetPackageData, PromoSave, GetResult, HolderClingSave, UpdateApproval, CheckData, F_Delete, SaveEmailBody, SaveMenuInfo, ConfigMenu, DelRes, HelpTextSave, OtherText, DifImgSave, OrderConfSave, GenerateBitlyUrl, DifCovImgSave, ConfirmOrder, CreateVenue, DeleteVenue, CreateVenueMenu, DeleteVenueMenu, ApproveProposal, saveQuest, saveQuestLang, saveQuestRest, saveQuestService, sendQuest, DelResCustom };
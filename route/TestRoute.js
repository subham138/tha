const express = require('express')
const upload = require('express-fileupload')
const fs = require('fs');
const { MenuImageSave, SectionImageSave, OtherImageSave, MonthDateSave, LogoSave, SectionSave, F_Select } = require('../modules/MenuSetupModule');
const TestRouter = express.Router();
const db = require('../core/db');
const { SaveSpecialMenuImg, SpecialMonthDateSave } = require('../modules/SpecialModule');
const { InsertCalender } = require('../modules/CalenderModule');
const { DifImgSave, DifCovImgSave } = require('../modules/AdminModule');
const { save_message } = require('./MessageCenterRouter');
const { saveAvatar, saveVoice } = require('./ConciergeRouter');

TestRouter.use(upload());

//var dir = 'public';
//var subDir = "public/uploads";

//if (!fs.existsSync(dir)) {
//    fs.mkdirSync(dir);

//    fs.mkdirSync(subDir);
//}

// TestRouter.post('/testing', async (req, res) => {
//     // console.log({ bd: req.body });
//     var cov_file_name = '',
//         top_img_name = '';
//     if (req.files.cov_img) {
//         cov_file_name = req.body.restaurant_id + '_' + req.body.menu_id + '_cover_' + req.files.cov_img.name;
//         req.files.cov_img.mv('uploads/' + cov_file_name, async (err) => {
//             if (err) {
//                 console.log(err);
//             } else {
//                 console.log('Other Image Top Uploaded');
//             }
//         })
//     }
//     if (req.files.top_img) {
//         top_img_name = req.body.restaurant_id + '_' + req.body.menu_id + '_top_' + req.files.top_img.name;
//         req.files.top_img.mv('uploads/' + top_img_name, async (err) => {
//             if (err) {
//                 console.log(err);
//             } else {
//                 console.log('Other Image Top Uploaded');
//             }
//         })
//     }

//     var dt = await MenuImageSave(req.body, cov_file_name, top_img_name);
//     var upload_menu = await UploadMenu(req.files.menu_img, req.body);
//     var upload_sec = await UploadSection(req.files.section_img, req.body);
//     res.send({ suc: 1, msg: 'Success' });
// })

TestRouter.post('/testing', async (req, res) => {
    console.log({ bd: req.body, file: req.files, req: req });
    // console.log(req.body.cov_img);
    var cov_file_name = '',
        top_img_name = '',
        data = req.body;
    var cov_file = req.files ? (req.files.cov_img ? req.files.cov_img : null) : null;
    var top_file = req.files ? (req.files.top_img ? req.files.top_img : null) : null;
    if (cov_file) {
        var cov_file_name = data.hotel_id + '_' + data.srv_res_flag + '_' + data.srv_res_id + '_' + data.menu_id + '_cover_' + cov_file.name;

        cov_file.mv('uploads/' + cov_file_name, async (err) => {
            if (err) {
                console.log(`${cov_file_name} not uploaded`);
            } else {
                console.log(`Successfully ${cov_file_name} uploaded`);
                // await SectionImageSave(data, filename);
            }
        })
    }
    if (top_file) {
        var top_img_name = data.hotel_id + '_' + data.srv_res_flag + '_' + data.srv_res_id + '_' + data.menu_id + '_top_' + top_file.name;

        top_file.mv('uploads/' + top_img_name, async (err) => {
            if (err) {
                console.log(`${top_img_name} not uploaded`);
            } else {
                console.log(`Successfully ${top_img_name} uploaded`);
                // await SectionImageSave(data, filename);
            }
        })
    }

    var dt = await MenuImageSave(req.body, cov_file_name, top_img_name);
    // var upload_menu = await UploadMenu(req.files ? (req.files.menu_img ? req.files.menu_img : null) : null, req.body);
    // var upload_sec = await UploadSection(req.files ? (req.files.section_img ? req.files.section_img : null) : null, req.body);
    res.send({ suc: 1, msg: 'Success' });
})

TestRouter.post('/menu_file_testing', async (req, res) => {
    console.log({ menu_dt: req.body, menu_file: req.files });
    var menu_img = req.files ? (req.files.menu_img ? req.files.menu_img : null) : null;
    var upload_menu = await UploadMenu(menu_img, req.body)
    res.send({ suc: 1, msg: "Menu Uploaded" });
})

TestRouter.post('/sec_file_testing', async (req, res) => {
    var sec_img = req.files ? (req.files.section_img ? req.files.section_img : null) : null;
    var upload_sec = await UploadSection(sec_img, req.body);
    res.send({ suc: 1, msg: "Section Uploaded" });
})

const UploadSection = async (sec_img, data) => {
    var file_path = '';
    if (sec_img) {
        // console.log();
        var sec_file = sec_img,
            ResIdPath = "uploads/";

        if (Array.isArray(sec_img)) {
            console.log(sec_file.length);
            file_path = new Array();
            for (let i = 1; i <= sec_file.length; i++) {
                var filename = '';
                var file = sec_file[i - 1];
                filename = data.restaurant_id + '_' + data.srv_res_flag + '_' + data.srv_res_id + '_' + data.menu_id + '_section_' + i + '_' + file.name;
                file_path.push({ i, filename });

                file.mv('uploads/' + filename, async (err) => {
                    if (err) {
                        console.log(`${filename} not uploaded`);
                    } else {
                        console.log(`Successfully ${filename} uploaded`);
                    }
                })
            }
            await SectionImageSave(data, file_path);
        } else {
            var filename = data.restaurant_id + '_' + data.menu_id + '_section_' + sec_file.name;

            sec_file.mv('uploads/' + filename, async (err) => {
                if (err) {
                    console.log(`${filename} not uploaded`);
                } else {
                    console.log(`Successfully ${filename} uploaded`);
                    await SectionImageSave(data, filename);
                }
            })
        }
    } else {
        if (data.SectionUrl != '') {
            await SectionImageSave(data, file_path);
        }
    }
}

const UploadMenu = async (menu_img, data) => {
    var file_path = '';
    if (menu_img) {
        var sec_file = menu_img,
            ResIdPath = "uploads/";

        if (Array.isArray(sec_file)) {
            console.log(sec_file.length);
            let j = 0;
            file_path = new Array();
            for (let i = 1; i <= sec_file.length; i++) {
                var filename = '';
                var file = sec_file[i - 1];
                filename = data.hotel_id + '_' + data.srv_res_flag + '_' + data.srv_res_id + '_' + data.menu_id + '_menu_' + i + '_' + file.name;
                file_path.push({ i, filename });

                file.mv('uploads/' + filename, async (err) => {
                    if (err) {
                        console.log(`${filename} not uploaded`);
                    } else {
                        console.log(`Successfully ${filename} uploaded`);
                    }
                })
            }
            await OtherImageSave(data, file_path);
            // console.log(Array.isArray(file_path));
        } else {
            // console.log({ else: Array.isArray(file_path) });
            var filename = data.hotel_id + '_' + data.srv_res_flag + '_' + data.srv_res_id + '_' + data.menu_id + '_menu_' + sec_file.name;

            sec_file.mv('uploads/' + filename, async (err) => {
                if (err) {
                    console.log(`${filename} not uploaded`);
                } else {
                    console.log(`Successfully ${filename} uploaded`);
                    await OtherImageSave(data, filename);
                }
            })
        }

    } else {
        // console.log("Null File Selected");
        if (data.MenuUrl != '') {
            await OtherImageSave(data, file_path)
        }
    }
}

TestRouter.post('/logo', async (req, res) => {
    console.log({ body: req.body, fl: req.files });
    // let res_name = req.body.restaurant_name.replace(' ', '_');
    // var data = await UploadLogo(req.files.logo_img, res_name, req.body);
    var files = req.files ? (req.files.logo_img ? req.files.logo_img : null) : null;
    var data = await UploadLogo(files, req.body);
    // console.log({logo_img: req.body.logo_img, body: req.body, req});
    res.send(data);
})

const UploadLogo = async (logo_img, data) => {
    var dt = '',
        file_path = '',
        res = '';
    if (logo_img) {
        var buffer = logo_img;
        // var dt = buffer.split(';');
        // var ext = dt[0].split('/')[1];
        var file = logo_img;
        var filename = data.hotel_id + '_' + data.srv_res_flag + '_' + data.srv_res_id + '_logo_' + file.name;

        // BASE64 FILE UPLOAD //
        // var filename = data.restaurant_id + '_' + data.venue_id + '_logo_' + data.filename;

        // console.log(filename);
        // var buffer_dt = buffer.replace(/^data:image\/png;base64,/, "");
        // buffer_dt += buffer_dt.replace('+', ' ');
        // let binaer_dt = new Buffer(buffer_dt, 'base64').toString('binary');
        // fs.writeFile("uploads/" + filename, binaer_dt, "binary", async (err) => {
        //     if (err) console.log(err); // writes out file without error, but it's not a valid image
        //     else {
        //         await LogoSave(data, filename);
        //     }
        // });
        // END //
        return new Promise((resolve, reject) => {
            file.mv("uploads/" + filename, async (err) => {
                if (err) {
                    console.log(err);
                    res = { suc: 0, msg: "Error" };
                } else {
                    console.log('Logo Uploaded ' + filename);
                    res = await LogoSave(data, filename);
                }
                resolve(res);
            })
        })
    } else {
        return new Promise(async (resolve, reject) => {
            res = await LogoSave(data, file_path);
            resolve(res);
        })

    }
}

TestRouter.post('/cover_save', async (req, res) => {
    var img_type = 'cover';
    var files = req.files ? (req.files.cov_img ? req.files.cov_img : null) : null;
    // console.log({files: req.files, body: req.body});
    var dt = await CoverImgUpload(files, img_type, req.body);
    res.send(dt);
})

const CoverImgUpload = async (files, img_type, data) => {
    var filename = '',
        res = '';
    if (files) {
        filename = data.restaurant_id + '_' + data.venue_id + '_' + data.menu_id + '_' + img_type + '_' + files.name;

        // var buffer = files;
        // var dt = buffer.split(';');
        // var ext = dt[0].split('/')[1];
        // var filename = data.restaurant_id + '_' + data.menu_id + '_' + img_type + '_' + data.filename;

        // console.log(ext);
        // var buffer_dt = buffer.replace(/^data:image\/png;base64,/, "");
        // buffer_dt += buffer_dt.replace('+', ' ');
        // let binaer_dt = new Buffer(buffer_dt, 'base64').toString('binary');
        // return new Promise(async (resolve, reject) => {
        //     fs.writeFile("uploads/" + filename, binaer_dt, "binary", async (err) => {
        //         if (err) { console.log(err); res = { suc: 0, msg: "err" }; } // writes out file without error, but it's not a valid image
        //         else {
        //             res = await UpdateOtherImg(`cover_page_url = "${data.cov_url}", cover_page_img = "${filename}"`, `id = "${data.id}" AND restaurant_id = "${data.restaurant_id}"`, 'td_other_image_custom');
        //         }
        //         resolve(res);
        //     });

        // })
        return new Promise(async (resolve, reject) => {
            files.mv('uploads/' + filename, async (err) => {
                if (err) {
                    console.log(`${filename} not uploaded`);
                    res = { suc: 0, msg: "err" };
                } else {
                    console.log(`Successfully ${filename} uploaded`);
                    res = await UpdateOtherImg(`cover_page_url = "${data.cov_url}", cover_page_img = "${filename}"`, `id = "${data.id}" AND restaurant_id = "${data.restaurant_id}"`, 'td_other_image_custom');
                }
                resolve(res);
            })
        })
    } else {
        return new Promise(async (resolve, reject) => {
            res = await UpdateOtherImg(`cover_page_url = "${data.cov_url}", cover_page_img = "${filename}"`, `id = "${data.id}" AND restaurant_id = "${data.restaurant_id}"`, 'td_other_image_custom');
            resolve(res);
        })
    }
}

TestRouter.post('/top_save', async (req, res) => {
    // console.log({files: req.files, body: req.body});
    var img_type = 'top';
    var files = req.files ? (req.files.top_img ? req.files.top_img : null) : null;
    var dt = await TopImgUpload(files, img_type, req.body);
    res.send(dt);
})

const TopImgUpload = async (files, img_type, data) => {
    var filename = '',
        res = '';
    if (files) {
        var filename = data.restaurant_id + '_' + data.menu_id + '_' + img_type + '_' + files.name;
        return new Promise(async (resolve, reject) => {
            files.mv('uploads/' + filename, async (err) => {
                if (err) {
                    console.log(`${filename} not uploaded`);
                    res = { suc: 0, msg: "err" };
                } else {
                    console.log(`Successfully ${filename} uploaded`);
                    res = await UpdateOtherImg(`top_img_url = "${data.top_url}", top_image_img = "${filename}"`, `id = "${data.id}" AND restaurant_id = "${data.restaurant_id}"`, 'td_other_image_custom');
                }
                resolve(res);
            })
        })

        // BASE64 FILE UPLOAD //
        // var buffer = files;
        // // var dt = buffer.split(';');
        // // var ext = dt[0].split('/')[1];
        // var filename = data.restaurant_id + '_' + data.menu_id + '_' + img_type + '_' + data.filename;

        // // console.log(ext);
        // var buffer_dt = buffer.replace(/^data:image\/png;base64,/, "");
        // buffer_dt += buffer_dt.replace('+', ' ');
        // let binaer_dt = new Buffer(buffer_dt, 'base64').toString('binary');
        // return new Promise(async (resolve, reject) => {
        //     fs.writeFile("uploads/" + filename, binaer_dt, "binary", async (err) => {
        //         if (err) { console.log(err); res = { suc: 0, msg: "err" }; } // writes out file without error, but it's not a valid image
        //         else {
        //             res = await UpdateOtherImg(`top_img_url = "${data.top_url}", top_image_img = "${filename}"`, `id = "${data.id}" AND restaurant_id = "${data.restaurant_id}"`, 'td_other_image_custom');
        //         }
        //         resolve(res);
        //     });
        // })
    } else {
        return new Promise(async (resolve, reject) => {
            res = await UpdateOtherImg(`top_img_url = "${data.top_url}", top_image_img = "${filename}"`, `id = "${data.id}" AND restaurant_id = "${data.restaurant_id}"`, 'td_other_image_custom');
            resolve(res);
        })
    }
}

const UpdateOtherImg = (fields, whr, table_name) => {
    var sql = `UPDATE ${table_name} SET ${fields} WHERE ${whr}`;
    var res = '';
    console.log(sql);
    return new Promise((resolve, reject) => {
        db.query(sql, (err, lastId) => {
            if (err) {
                console.log(err);
                res = { suc: 0, msg: 'Not Updated' };
            } else {
                res = { suc: 1, msg: 'Updated Successfully' };
            }
            resolve(res)
        })
    })
}

TestRouter.post('/section', async (req, res) => {
    // console.log(req.files);
    var sec_name = req.body.sec_name.replace(' ', '_');
    var img_type = 'section' + sec_name;
    console.log({ files: req.files, body: req.body });
    var files = req.files ? (req.files.sec_img ? req.files.sec_img : null) : null;
    // var dt = await UploadSectionImg(req.body.sec_img, img_type, req.body);
    var dt = await UploadSectionImg(files, img_type, req.body);
    res.send(dt);
})

const UploadSectionImg = (files, img_type, data) => {
    var filename = '',
        res = '';
    // console.log({sec_len: files.length});
    if (files) {
        filename = data.hotel_id + '_' + data.srv_res_id + '_' + data.menu_id + '_' + img_type + '_' + data.filename;
        return new Promise(async (resolve, reject) => {
            files.mv('uploads/' + filename, async (err) => {
                if (err) {
                    console.log(`${filename} not uploaded`);
                    res = { suc: 0, msg: "err" };
                } else {
                    console.log(`Successfully ${filename} uploaded`);
                    res = await SectionSave(data, filename);
                }
                resolve(res);
            })
        })

        // BASE64 FILE UPLOAD //
        // var buffer = files;
        // // var dt = buffer.split(';');
        // // var ext = dt[0].split('/')[1];
        // var filename = data.restaurant_id + '_' + data.venue_id + '_' + data.menu_id + '_' + img_type + '_' + data.filename;

        // // console.log(ext);
        // var buffer_dt = buffer.replace(/^data:image\/png;base64,/, "");
        // buffer_dt += buffer_dt.replace('+', ' ');
        // let binaer_dt = new Buffer(buffer_dt, 'base64').toString('binary');
        // return new Promise(async (resolve, reject) => {
        //     fs.writeFile("uploads/" + filename, binaer_dt, "binary", async (err) => {
        //         if (err) { console.log(err); res = { suc: 0, msg: "err" }; } // writes out file without error, but it's not a valid image
        //         else {

        //             res = await SectionSave(data, filename);
        //         }
        //         resolve(res);
        //     });
        // })
    } else {
        return new Promise(async (resolve, reject) => {
            res = await SectionSave(data, filename);
            resolve(res);
        })
    }
}

TestRouter.get('/del_menu', (req, res) => {
    var sql = `DELETE FROM td_menu_image_custom WHERE restaurant_id = ${req.query.res_id} AND id = ${req.query.id}`;
    db.query(sql, (err, lastId) => {
        if (err) {
            console.log(err);
            res.send({ suc: 0, msg: JSON.stringify(err) });
        } else {
            res.send({ suc: 1, msg: "Deleted" });
        }
    })
})

TestRouter.get('/del_sec', (req, res) => {
    var sql = `DELETE FROM td_section_image_request WHERE restaurant_id = ${req.query.res_id} AND id = ${req.query.id}`;
    db.query(sql, (err, lastId) => {
        if (err) {
            console.log(err);
            res.send({ suc: 0, msg: JSON.stringify(err) });
        } else {
            res.send({ suc: 1, msg: "Deleted" });
        }
    })
})

TestRouter.post('/special_save', async (req, res) => {
    var upload_special_menu = await UploadSpecialMenu(req.files ? (req.files.special_img ? req.files.special_img : null) : null, req.body);
    // console.log(req.body);
    // var data = await SpecialMonthDateSave(res.body);
    res.send({ suc: 1, msg: "Success" });
})

const UploadSpecialMenu = async (menu_img, data) => {
    var file_path = '';
    if (menu_img) {
        var sec_file = menu_img,
            ResIdPath = "uploads/";

        if (Array.isArray(sec_file)) {
            console.log(sec_file.length);
            let j = 0;
            file_path = new Array();
            for (let i = 1; i <= sec_file.length; i++) {
                var filename = '';
                var file = sec_file[i - 1];
                filename = data.restaurant_id + '_' + data.menu_id + '_special_menu_' + i + '_' + file.name;
                file_path.push({ i, filename });

                file.mv('uploads/' + filename, async (err) => {
                    if (err) {
                        console.log(`${filename} not uploaded`);
                    } else {
                        console.log(`Successfully ${filename} uploaded`);
                    }
                })
            }
            await SaveSpecialMenuImg(data, file_path);
            // console.log(Array.isArray(file_path));
        } else {
            // console.log({ else: Array.isArray(file_path) });
            var filename = data.restaurant_id + '_' + data.menu_id + '_special_menu_' + sec_file.name;

            sec_file.mv('Uploads/' + filename, async (err) => {
                if (err) {
                    console.log(`${filename} not uploaded`);
                } else {
                    console.log(`Successfully ${filename} uploaded`);
                    await SaveSpecialMenuImg(data, filename);
                }
            })
        }

    } else {
        // console.log("Null File Selected");
        await SaveSpecialMenuImg(data, file_path)
    }
}

TestRouter.post('/calender_dtls', async (req, res) => {
    var data = req.body,
        filename = '',
        response = '';
    var img = req.files ? (req.files.img ? req.files.img : null) : null;
    if (img) {
        filename = data.res_id + '_calender_' + img.name;

        img.mv('uploads/' + filename, async (err) => {
            if (err) {
                console.log(`${filename} not uploaded`);
            } else {
                console.log(`Successfully ${filename} uploaded`);
                if (await InsertCalender(data, filename)) {
                    response = { suc: 1, msg: 'Successfully Inserted !!' };
                } else {
                    response = { suc: 0, msg: 'Not Inserted !!' }
                }
                // await SaveSpecialMenuImg(data, filename);
            }
            res.send(response);
        })
    } else {
        if (await InsertCalender(data, filename)) {
            response = { suc: 1, msg: 'Successfully Inserted !!' };
        } else {
            response = { suc: 0, msg: 'Not Inserted !!' }
        }
        res.send(response);
    }

})

TestRouter.post('/dif_img_save', async (req, res) => {
    var img_type = 'dif';
    console.log({ dif: img_type });
    var dt = await difImgSave(req.body.dif_img, img_type, req.body);
    res.send(dt);
})

const difImgSave = async (files, img_type, data) => {
    var filename = '',
        res = '';
    if (files) {
        // var filename = data.restaurant_id + '_' + data.menu_id + '_' + img_type + '_' + files.name;
        // return new Promise(async (resolve, reject) => {
        //     files.mv('uploads/' + filename, async (err) => {
        //         if (err) {
        //             console.log(`${filename} not uploaded`);
        //         } else {
        //             console.log(`Successfully ${filename} uploaded`);
        //             dt = await UpdateOtherImg(`top_img_url = "${data.top_url}", top_image_img = "${filename}"`, `id = "${data.id}" AND restaurant_id = "${data.restaurant_id}"`, 'td_other_image');
        //             resolve(dt);
        //         }
        //     })
        // })
        var buffer = files;
        // var dt = buffer.split(';');
        // var ext = dt[0].split('/')[1];
        filename = img_type + '_' + data.filename;

        // console.log(ext);
        var buffer_dt = buffer.replace(/^data:image\/png;base64,/, "");
        buffer_dt += buffer_dt.replace('+', ' ');
        let binaer_dt = new Buffer(buffer_dt, 'base64').toString('binary');
        return new Promise(async (resolve, reject) => {
            fs.writeFile("uploads/" + filename, binaer_dt, "binary", async (err) => {
                if (err) { console.log(err); res = { suc: 0, msg: "err" }; } // writes out file without error, but it's not a valid image
                else {
                    res = await DifImgSave(filename, data.user);
                }
                resolve(res);
            });
        })
    } else {
        return new Promise(async (resolve, reject) => {
            res = { suc: 0, msg: "No File Selected !!" };
            resolve(res);
        })
    }
}

TestRouter.post('/save_other_qr', async (req, res) => {
    var data = req.body;
    var flag = data.flag,
        res_id = data.res_id,
        venue_id = data.venue_id,
        menu_url = data.menu_url,
        bitly = data.bitly,
        field_name = flag == 0 ? "dynamic_img" : (flag == 1 ? "v_card_img" : "fun_directory_img"),
        pre_name = flag == 0 ? "dynamic_qr" : (flag == 1 ? "v_card_qr" : "fun_directory_qr"),
        img = req.files ? (req.files.img ? req.files.img : false) : false,
        response = '';

    // console.log({data, img});

    // switch(flag){
    //     case 0:
    //         field_name = 'dynamic_img';
    //         pre_name = 'dynamic_qr';
    //         // response = await UploadOtherQr(res_id, pre_name, field_name, img);
    //         // res.send(response);
    //         break;
    //     case 1:
    //         field_name = 'v_card_img';
    //         pre_name = 'v_card_qr';
    //         // response = await UploadOtherQr(res_id, pre_name, field_name, img);
    //         // res.send(response);
    //         break;
    //     case 2:
    //         field_name = 'fun_directory_img';
    //         pre_name = 'fun_directory_qr';
    //         break;
    // }
    response = await UploadOtherQr(res_id, pre_name, field_name, img, venue_id, menu_url, bitly);
    res.send(response);
})

const UploadOtherQr = (res_id, pre_name, field_name, img, venue_id, menu_url, bitly) => {
    var res = '',
        img_name = '';
    if (img) {
        img_name = res_id + '_' + venue_id + '_' + pre_name + '_' + img.name;
        console.log({ img_name });
        return new Promise((resolve, reject) => {
            img.mv('uploads/' + img_name, async (err) => {
                if (err) {
                    console.log(`${img_name} not uploaded`);
                    res = { suc: 0, msg: 'File Not Uploaded' }
                } else {
                    console.log(`Successfully ${img_name} uploaded`);
                    res = await SaveOtherQr(img_name, res_id, field_name, venue_id, menu_url, bitly);
                    // await SectionImageSave(data, filename);
                }
                resolve(res);
            })
        })
    } else {
        return new Promise((resolve, reject) => {
            res = { suc: 0, msg: 'File was empty' };
            resolve(res);
        })
    }
}

const SaveOtherQr = async (filename, res_id, field_name, venue_id, menu_url, bitly) => {
    let chk_sql = `SELECT COUNT(id) ck_dt, id FROM md_url_custom WHERE restaurant_id = ${res_id} AND venue_id = "${venue_id}"`;
    var chk_dt = await F_Select(chk_sql),
        id = chk_dt.msg[0].id,
        res = '',
        sql = '';
    if (chk_dt.msg[0].ck_dt > 0) {
        sql = `UPDATE md_url_custom SET url = "${menu_url}", bitly_url= "${bitly}", ${field_name} = "${filename}" WHERE id = ${id}`;
        // console.log({ sql });

    } else {
        sql = `INSERT INTO md_url_custom (restaurant_id, venue_id, url, bitly_url, ${field_name}) VALUES 
        ("${res_id}", "${venue_id}", "${menu_url}", "${bitly}", "${filename}")`
    }
    console.log(sql);
    return new Promise((resolve, reject) => {
        db.query(sql, (err, lastId) => {
            if (err) {
                console.log(err);
                res = { suc: 0, msg: JSON.stringify(err) };
            } else {
                res = { suc: 1, msg: "Inserted !!" }
            }
            resolve(res);
        })
    })
}

TestRouter.post('/dif_cov_img_save', async (req, res) => {
    var img_type = 'dif_cov';
    console.log({ cov: img_type });
    var dt = await difCovImgSave(req.body.cover_img, img_type, req.body);
    res.send(dt);
})

const difCovImgSave = async (files, img_type, data) => {
    var filename = '',
        res = '';
    if (files) {
        // var filename = data.restaurant_id + '_' + data.menu_id + '_' + img_type + '_' + files.name;
        // return new Promise(async (resolve, reject) => {
        //     files.mv('uploads/' + filename, async (err) => {
        //         if (err) {
        //             console.log(`${filename} not uploaded`);
        //         } else {
        //             console.log(`Successfully ${filename} uploaded`);
        //             dt = await UpdateOtherImg(`top_img_url = "${data.top_url}", top_image_img = "${filename}"`, `id = "${data.id}" AND restaurant_id = "${data.restaurant_id}"`, 'td_other_image');
        //             resolve(dt);
        //         }
        //     })
        // })
        var buffer = files;
        // var dt = buffer.split(';');
        // var ext = dt[0].split('/')[1];
        filename = img_type + '_' + data.cover_filename;

        // console.log(ext);
        var buffer_dt = buffer.replace(/^data:image\/png;base64,/, "");
        buffer_dt += buffer_dt.replace('+', ' ');
        let binaer_dt = new Buffer(buffer_dt, 'base64').toString('binary');
        return new Promise(async (resolve, reject) => {
            fs.writeFile("uploads/" + filename, binaer_dt, "binary", async (err) => {
                if (err) { console.log(err); res = { suc: 0, msg: "err" }; } // writes out file without error, but it's not a valid image
                else {
                    res = await DifCovImgSave(filename, data.user);
                }
                resolve(res);
            });
        })
    } else {
        return new Promise(async (resolve, reject) => {
            res = { suc: 0, msg: "No File Selected !!" };
            resolve(res);
        })
    }
}

TestRouter.post('/message_center', async (req, res) => {
    var data = req.body
    var files = req.files ? (req.files.img ? req.files.img : null) : null;
    // console.log(files);
    var res_dt = await message_center_file_save(data, files)
    res.send(res_dt);
})

const message_center_file_save = (data, files) => {
    return new Promise(async (resolve, reject) => {
        var img_name, img_path, res_dt;
        if (files) {
            img_name = data.hotel_id + '_' + data.message_center_type + '_' + files.name;
            img_path = img_name
            files.mv('uploads/' + img_name, async (err) => {
                if (err) {
                    console.log(`${img_name} not uploaded`);
                    res = { suc: 0, msg: "err" };
                } else {
                    console.log(`Successfully ${img_name} uploaded`);
                    res_dt = await save_message(data, img_path)
                }
                resolve(res_dt);
            })
        } else {
            res_dt = await save_message(data, null)
            resolve(res_dt)
        }
    })
}

TestRouter.post('/pc_avatar', async (req, res) => {
    var data = req.body
    var files = req.files ? (req.files.img ? req.files.img : null) : null;
    // console.log(files);
    var res_dt = await avatar_file_save(data, files)
    res.send(res_dt);
})

const avatar_file_save = (data, files) => {
    return new Promise(async (resolve, reject) => {
        var img_name, img_path, res_dt;
        if (files) {
            img_name = data.hotel_id + '_avatar_' + files.name;
            img_path = img_name
            files.mv('uploads/' + img_name, async (err) => {
                if (err) {
                    console.log(`${img_name} not uploaded`);
                    res = { suc: 0, msg: "err" };
                } else {
                    console.log(`Successfully ${img_name} uploaded`);
                    res_dt = await saveAvatar(data, img_path)
                }
                resolve(res_dt);
            })
        } else {
            res_dt = await saveAvatar(data, null)
            resolve(res_dt);
        }
    })
}

// TestRouter.post('/pc_voice', async (req, res) => {
//     var data = req.body
//     var files = req.files ? (req.files.aud ? req.files.aud : null) : null;
//     // console.log(req.files);
//     var res_dt = await voice_file_save(data, files)
//     res.send(res_dt);
// })

const voice_file_save = (data, files) => {
    return new Promise(async (resolve, reject) => {
        var img_name, img_path, res_dt;
        if (files) {
            img_name = data.hotel_id + '_' + data.srv_res_flag + '_' + data.srv_res_id + '_voice_' + files.name;
            img_path = img_name
            files.mv('uploads/' + img_name, async (err) => {
                if (err) {
                    console.log(`${img_name} not uploaded`);
                    res = { suc: 0, msg: "err" };
                } else {
                    console.log(`Successfully ${img_name} uploaded`);
                    res_dt = await saveVoice(data, img_path)
                }
                resolve(res_dt);
            })
        } else {
            res_dt = await saveVoice(data, null)
            resolve(res_dt);
        }
    })
}

module.exports = { TestRouter, UploadLogo };
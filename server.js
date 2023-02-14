//Branch backend
// EXPORTING MODULES //
const express = require('express'),
    bodyParser = require('body-parser'),
    app = express(),
    db = require('./core/db'),
    cors = require("cors"),
    dateFormat = require('dateformat'),
    Buffer = require('buffer').Buffer,
    port = process.env.PORT || 3000,
    http = require('http'),
    socketIO = require('socket.io');
// const dateFormat = require('dateformat');

// USING CORS //
app.use(cors());
// parse requests of content-type - application/json
app.use(express.json());
// parse requests of content-type - application/x-www-form-urlencoded
app.use(express.urlencoded({ extended: false }));

app.use(express.static('uploads'));

const server = http.createServer(app);
const io = socketIO(server, {
    cors: {
        origin: ["http://localhost:4200", "https://custom.shoplocal-lagunabeach.com"],
    },
});

app.use((req, res, next) => {
    req.io = io;
    return next();
});

// CALLING ROUTER MODULE FOLDER LOCATION //
const { RegRouter } = require('./route/RegistrationRoute');
const { AdmRouter } = require('./route/AdminRouter');
const { LogRouter } = require('./route/LoginRouter');
const { MenuSetRouter } = require('./route/MenuSetupRouter');
const { TestRouter } = require('./route/TestRoute');
const { EmailRouter } = require('./route/EmailRouter');
const { MenuRouter } = require('./route/MenuRouter');
const { SpecialRouter } = require('./route/SpecialRouter');
const { CalenderRouter } = require('./route/CalenderRouter');
const { PromoRouter } = require('./route/PromoRouter');
const { F_Select } = require('./modules/MenuSetupModule');
const { PayEmail } = require('./modules/EmailModule');
const { QuestRouter } = require('./route/QuestRouter');
const { proposalRouter } = require('./route/ProposalRouter');
const { ResMenuRouter } = require('./route/ResMenuSetupRouter');
const { MessageCenterRouter, sendMessage, sendMsgCount } = require('./route/MessageCenterRouter');
const { ConcRouter } = require('./route/ConciergeRouter');
const { SalesAgentRouter } = require('./route/SalesAgentRouter');
///////////////////////////////////////////

io.on('connection', async function (socket) {
    setInterval(async () => {

    }, 1000)
    socket.on('message', (data) => {
        socket.emit("message", data);
    })
    socket.on('hotel_msg', async (data) => {
        await sendMsgCount(data.hotel_id, data.msg_type, io)
        socket.emit("hotel_msg", res_dt);
    })
    socket.on('emer_msg', async (data) => {
        socket.emit("emer_msg", data);
    })
    socket.on('vip_msg', (data) => {
        socket.emit("vip_msg", data);
    })
    socket.on('group_msg', (data) => {
        socket.emit("group_msg", data);
    })
    socket.on('emp_msg', (data) => {
        socket.emit("emp_msg", data);
    })
})

// REGISTRATION ROUTER RegistrationRouter.js FOLDER //
app.use(RegRouter);

// ADMIN ROUTER AdminRouter.js FOLDER //
app.use(AdmRouter);

// LOGIN ROUTER LoginRouter.js FOLDER //
app.use(LogRouter);

// MENU SETUP ROUTER LoginRouter.js FOLDER //
app.use(MenuSetRouter);

app.use(TestRouter);

app.use(EmailRouter);

app.use(MenuRouter);

app.use(SpecialRouter);

app.use(CalenderRouter);

app.use(PromoRouter);

app.use(QuestRouter)

app.use(proposalRouter)

app.use(ResMenuRouter)

app.use(MessageCenterRouter)

app.use(ConcRouter)

app.use(SalesAgentRouter)


app.get('/', async (req, res) => {
    // var alpha = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N',
    //     'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
    //     '1', '2', '3', '4', '5', '6', '7', '8', '9', '0',
    //     'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n',
    //     'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
    // var a = alpha[Math.floor(Math.random() * 62)];
    // var b = alpha[Math.floor(Math.random() * 62)];
    // var c = alpha[Math.floor(Math.random() * 62)];
    // var d = alpha[Math.floor(Math.random() * 62)];
    // var e = alpha[Math.floor(Math.random() * 62)];
    // var sum = '123';//a + b + c + d + e;
    // var pwd = '$2b$10$SSokJhSzqi5bw5w.PR0eAu.AGE5qHVxwJfGaATBabs078KY5diGOm';//bcrypt.hashSync(sum, 10);
    // var random_num = Math.random().toString(36).substr(2);
    // console.log({ comp: await bcrypt.compare(pwd, sum) });
    // var date = new Date(),
    //     mod_hr = date.setMinutes(date.getMinutes() + 10),
    //     n = dateFormat(mod_hr, "yyyy-MM-dd hh:mm:ss");
    // console.log({ hr: n });
    // res.send('Welcome');
    res.sendFile(__dirname + '/test.html')
})

////////// SEND PAY EMAIL ONCE PER DAY ///////////////////
var dayInMilliseconds = 1000 * 60 * 60 * 22;
setInterval(async () => {
    let sql = `SELECT a.id, a.restaurant_name, a.email, DATE(b.created_dt) as order_date, b.payment_flag, b.pay_mail_send
    FROM td_contacts a, td_order_items b
    WHERE a.id=b.restaurant_id
    AND b.payment_flag = 'N'
    AND b.pay_mail_send = 'N'`;
    var select_data = await F_Select(sql),
        data = select_data.msg.length > 0 ? select_data.msg : false;
    var date = new Date(),
        now_date = dateFormat(date, "yyyy-mm-dd");
    if (data) {
        data.forEach(async dt => {
            if (now_date == dt.order_date) {
                let str = dt.id + '/' + dt.email;
                let en_dt = Buffer.from(str).toString('base64');
                var res_dt = await PayEmail(dt.id, en_dt);
                if (res_dt.suc > 0) {
                    var up_sql = `UPDATE td_order_items SET pay_mail_send = 'Y' WHERE restaurant_id = ${dt.id}`;
                    db.query(up_sql, (err) => {
                        if (err) {
                            console.log(err);
                        } else {
                            console.log('Success');
                        }
                    })
                }
            }
        })
    }
}, dayInMilliseconds);

// CREATE EXPRESS SERVER //
server.listen(port, (err) => {
    if (err) console.log(err);
    else console.log(`App is Running at PORT - ${port}`);
})
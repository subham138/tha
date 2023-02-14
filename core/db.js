const mysql = require("mysql");

// const db = mysql.createPool({
//     connectionLimit: 10,
//     host: 'localhost',
//     user: 'laguna_shop_custom',
//     password: 'LagunaShopCustom@2022',
//     database: 'laguna_local_shop_custom'
// });

const db = mysql.createPool({
  connectionLimit: 10,
  host: "localhost",
  user: "root",
  password: "",
  database: "laguna_local_shop_latest",
});

db.getConnection((err, connection) => {
  if (err) console.log(err);
  connection.release();
  return;
});

module.exports = db;

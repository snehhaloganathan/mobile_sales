const express = require('express');
const bodyParser = require('body-parser');
const http=require('http');
const server = http.createServer();
var cors = require('cors');
var formidable = require('formidable');
var fs = require('fs');

const cookieParser = require("cookie-parser");
const session = require('express-session');

const app = express();
app.use(cors());
var mysql = require('mysql');
var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database:"shopping"
});
con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});
app.use(bodyParser.urlencoded({ extended: true }));


app.use(session({ secret: 'thisismysecrctekeyfhrgfgrfrty84fwir767',resave: true,
saveUninitialized: true,saveUninitialized:true,
cookie: { secure: true }, cookie: { maxAge: 60000 }}));

app.use(cookieParser());

var session_d;

app.get('/', function(req, res, next) {
  session_d=req.session;
})

app.post('/check_acc_exist', (req, res) => {
  var req_data = JSON.parse(req.body.data);
    var sql = "SELECT * FROM customer_list WHERE email='"+req_data['email']+"';";
    con.query(sql, function (err, result) {
      var response_data={};
      response_data['success']=1;
      response_data['result']=result;
      response_data['exist']=0;
      if(err){response_data['error']=err.sqlMessage;}
      else if(result && result.length>0){
        response_data['exist']=result.length;
      }
      res.send(JSON.stringify(response_data));
    });
});

app.post('/customer_login', (req, res) => {
  var req_data = JSON.parse(req.body.data);
    var sql = "SELECT * FROM customer_list WHERE email='"+req_data['email']+"' and password='"+req_data['password']+"';";
    con.query(sql, function (err, result) {
      var response_data={};
      response_data['success']=0;
      response_data['result']=result;
      if(err){response_data['error']=err.sqlMessage;}
      else if(result && result.length>0){
        response_data['success']=1;
        response_data['customer']=result[0];
      }
      res.send(JSON.stringify(response_data));
    });
});

app.post('/customer_reg', (req, res) => {
  //var req_data = JSON.parse(req.body.data);
  var form = new formidable.IncomingForm();
  form.parse(req, function (err, fields, files) {
    var oldpath = files.fileupload.filepath;
    var uniq_str = Math.floor(Math.random() * 24) + 1;
    var newpath = 'uploads/avatars/'+ uniq_str + files.fileupload.originalFilename;
    fs.rename(oldpath, "../"+newpath, function (err) {
      // Tbl write
      var user_data=JSON.parse(fields.user_data);
      var sql = "INSERT INTO customer_list (firstname,lastname,gender,contact,email,password,avatar) values ('"+user_data['firstname']+"','"+user_data['lastname']+"','"+user_data['gender']+"','"+user_data['mobile']+"','"+user_data['email']+"','"+user_data['password']+"','"+newpath+"')";
      con.query(sql, function (err, result) {
        var response_data={};
        response_data['success']=0;
        if(err){response_data['error']=err.sqlMessage;}else if(result && parseInt(result.insertId)>0){response_data['success']=1;}
        res.send(JSON.stringify(response_data));
      });
      //Tbl Write End
    });
  });
});



const port = 8080;
app.listen(port, () => {
  console.log(`Server running on port${port}`);
});
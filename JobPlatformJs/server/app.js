var express = require("express");
var session = require("express-session")
var app = express();
var databaseManager = require("./databaseManager");
var mysql = require("mysql");
var bodyParser = require("body-parser");
var cors = require("cors");

//not good, can not handle erro specifically
process.on('uncaughtException', function(err) {
    console.log("uncaughtException");
    console.log(err);
    console.log(err.stack);
});

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
  extended: true
}));

app.use(session({secret: 'ababssss',resave: true,
saveUninitialized: false, cookie:{
    maxAge : 3600000
}},));

app.use(cors({
    origin:['http://localhost:8080'],
    methods:['GET','POST'],
    credentials: true // enable set cookie
}));


app.use(function(req, res, next) {
    // Website you wish to allow to connect
    res.setHeader('Access-Control-Allow-Origin', 'http://localhost:8080');

    // Request methods you wish to allow
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');

    // Request headers you wish to allow
    res.setHeader('Access-Control-Allow-Headers', 'Origin, X-Requested-With ,content-type');

    // Set to true if you need the website to include cookies in the requests sent
    // to the API (e.g. in case you use sessions)
    res.setHeader('Access-Control-Allow-Credentials', true);
    res.setHeader("Access-Control-Max-Age", "3600");

    // Pass to next layer of middleware
    next();
});

app.get('userInfo/:id', function(req, res) {
    try {
        if(databaseManager.checkUser(req.body.name)) {
            databaseManager.getUserInfo(req, res);
        } else {
            var err = new Error('You must login');
            err.status = 401;
            res.send(err);
        }
    } catch(e) {
        console.log(e);
        console.log(e.stack);
        var err = new Error('error happened in userInfo/:id');
        err.status = 401;
        res.send(err);
    }
});

app.post('/login', function(req, res) {
    try {
        databaseManager.doLogin(req, res);
    } catch(e) {
        console.log(e);
        console.log(e.stack);
        var err = new Error('error happened in login');
        err.status = 401;
        res.send(err);
    }
});

app.post('/register', function(req, res) {
    try {
        databaseManager.doRegister(req, res);
    } catch(e) {
        console.log(e);
        console.log(e.stack);
        var err = new Error('error happened in register');
        err.status = 401;
        res.send(err);
    }
});

app.get('/userInfoList', function(req, res) {
    try {
        if(databaseManager.checkUser(req.body.name)) {
            databaseManager.getUserList(req, res);
        } else {
            res.send(false);
        }
    } catch(e) {
        console.log(e);
        console.log(e.stack);
        var err = new Error('error happened in userInfoList');
        err.status = 401;
        res.send(err);
    }
});

app.post('/getProjectInfoList', function(req, res) {
    try {
        databaseManager.getProjectInfoList(req, res);
    } catch(e) {
        console.log(e);
        console.log(e.stack);
        var err = new Error('error happened in getProjectInfoList');
        err.status = 401;
        res.send(err);
    }

});

app.post('/getTaskInfoList', function(req, res) {
    try {
        databaseManager.getTaskInfoList(req, res);
    } catch(e) {
        console.log(e);
        console.log(e.stack);
        var err = new Error('error happened in getTaskInfoList');
        err.status = 401;
        res.send(err);
    }
});

app.post('/getTaskInfoDetail', function(req, res) {
    try {
        databaseManager.getTaskInfoDetail(req, res);
    } catch(e) {
        console.log(e);
        console.log(e.stack);
        var err = new Error('error happened in getTaskInfoList');
        err.status = 401;
        res.send(err);
    }
});

app.post('/updateTaskAnswers', function(req, res) {
    try {
        databaseManager.updateTaskAnswer(req, res);
    } catch(e) {
        console.log(e);
        console.log(e.stack);
        var err = new Error('error happened in updateTaskAnswers');
        err.status = 401;
        res.send(err);
    }
});


app.listen(3000);
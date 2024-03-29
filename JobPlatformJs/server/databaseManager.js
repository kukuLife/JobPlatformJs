const fs = require('fs');

var mysql = require('mysql');
var HttpResult = require('./HttpResult');

var connection = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'12345',
    port:'3306',
    database:'GOOD_JOB'
});

exports.getUserList = function(req, res) {
    var httpResult = new HttpResult();
	connection.query('select * from USER', function(error, result, field) {
		if(error) throw error;
        httpResult.data = result;  
        res.send(httpResult.data);      
	});
	
}

exports.doRegister = function(req,res){
    var httpResult = new HttpResult1();
    connection.query("insert into USER values (" + "'" + req.body.params.userId + "'" + ", " + "'" + req.body.params.passWord + "'" + ", " + "'" + req.body.params.userKeyWord + "'" + ", " + "now()" + ")", function(error, result, field) {
		if(error) throw error;
        httpResult.data = result;  
        res.send(httpResult.data);      
	});
}


exports.getUserInfo = function(req,res){
    var httpResult=new HttpResult();
    
    connection.query("select * from USER where USER_ID = " + req.body.userId, function(error, result, field) {
		if(error) throw error;
        httpResult.data = result;  
        res.send(httpResult.data);      
	});
}

exports.doLogin = function(req, res) {
    var httpResult = new HttpResult();
    connection.query("select * from USER where USER_ID =" + req.body.params.userId , function(error, result, field) {
    if(error) throw error;
    if(result && result != undefined && result.length > 0) {
        httpResult.data = result;
        httpResult.data = {userId : result[0].USER_ID, userName : result[0].USER_PASSWORD, ifSucess : true};
        req.session.userId = req.body.params.userId;
        
        res.send(httpResult);
    } else {
        httpResult.data = false;
        res.send(httpResult);
    }
});
}

exports.getProjectInfoList = function(req,res){
    var httpResult=new HttpResult();
    connection.query("select * from JOB where JOB_KEY_WORD = " + "'" + req.body.params.userKeyWord + "'", function(error, result, field) {
		if(error) {
            console.log(error)
            throw error
        }
    
        if(req.session.userId) {
            httpResult.data = result;  
            res.send(httpResult.data);
        } else {
            throw error
        }
	});
}

exports.getTaskInfoList = function(req, res) {
    var httpResult = new HttpResult();
    connection.query("select * from TASK where TASK_KEY_WORD = " + "'" + req.body.params.userKeyWord + "'", function(error, result) {
		if(error) {
            console.log(error)
            throw error
        }
        if(req.session.userId) {
            httpResult.data = result;  
            res.send(httpResult.data);
        } else {
            throw error
        }
	});
}

exports.getTaskInfoDetail = function(req, res) {
    var httpResult = new HttpResult();
    console.log(req.body.params.taskId)
    console.log(req.body.params.userId)
    connection.query("select * from TASK where TASK_KEY_WORD = " + "'" + req.body.params.userKeyWord + "' and TASK_ID = '" + req.body.params.taskId + "'", function(error, result) {
		if(error) {
            console.log(error)
            throw error
        }
        console.log("getTaskInfoDetailList===" + req.session)
        if(req.session.userId) {
            httpResult.data = result; 
            res.send(httpResult.data);
        } else {
            throw error
        }
	});
}

exports.updateTaskAnswer = function(req, res) {
    var httpResult = new HttpResult()
    const path = require('path');
    const directoryPath = path.join(__dirname, '')
    connection.query("update TASK set TASK_ANSWER = " + "'" + req.body.params.taskInfoDetail.task_answer + "' " +  "where TASK_ID = " + "'" + req.body.params.taskInfoDetail.task_id + "'", function(error, result) {
        if(error) {
            console.log(error)
            throw error
        }
        console.log("updateTaskAnswer ===" + req.session)
        if(req.session.userId) {
            httpResult.data = [];
        } else {
            throw error
        }
    }); 
    
    fs.writeFile( directoryPath + '/Test.java', req.body.params.taskInfoDetail.task_answer, function (err) {
        if (err) throw err;
        console.log('File is created successfully.');

        fs.readdir(directoryPath, function (err, files) {
            //handling error
            if (err) {
                return console.log('Unable to scan directory: ' + err);
            }
        try{
            //listing all files using forEach
            files.forEach(function (file) {
            // Do whatever you want to do with the file
            
            if(file == "Test.java") {
                var child = require('child_process').spawn(
                    'javac', [file],  {
                    stdio: ['inherit', 'inherit', 'inherit', 'ipc'],
                }).on('message', function(data) {
                    
                }).on('close', function() {

                    var child2 = require('child_process').spawn(
                        'java', ["Test"],  {
                    }).on('internalMessage', function(data) {
                        
                    }).on('close', function() {

                    });
                    child2.stdout.on('data', function(data) {
                        httpResult.data.push(data.toString());
                        console.log(httpResult.data)
                        return;
                    });
                });
            }
        });
        setTimeout(function() {
            res.send(httpResult.data);
        }, 1000);
        
        } catch(e) {
            console.log(e)
        }
        });
    });
}
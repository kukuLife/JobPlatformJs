const path = require('path');
const fs = require('fs');

const directoryPath = path.join(__dirname, 'tmp')



fs.readdir(directoryPath, function (err, files) {
    //handling error
    if (err) {
        return console.log('Unable to scan directory: ' + err);
    }

    //listing all files using forEach
    files.forEach(function (file) {
        // Do whatever you want to do with the file
        if(file == "Test.class") {
            console.log(file);
            var child = require('child_process').spawn(
                'java', ["Test"],  {
                    stdio: ['inherit', 'inherit', 'inherit', 'ipc'],
                }).on('message', function(data) {
                    console.log(data);
                }).on('close', function() {
                });
           
        }
    });
});


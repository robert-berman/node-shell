let pwd = require('./pwd');
//let ls = require('./ls');



    process.stdout.write('prompt > ');
    process.stdin.on ('data', (data) => {
        const cmd = data.toString().trim();
        if(cmd === 'pwd'){
         pwd('pwd');
        }
    //process.stdout.write('You typed: ' + cmd);
    //process.stdout.write('\nprompt > ');
    });


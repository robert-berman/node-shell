module.exports = function(data){
  process.stdout.write('prompt > ');

process.stdin.on ('data', (data) => {
    const cmd = data.toString().trim();
    if(cmd === 'ls'){
       let answer = fs.readdir('./','utf8', (err,files) =>{
       if(err){
         throw err;
       }else{
         process.stdout.write(files.join('\n'))
         process.stdout.write("prompt > ");
       }
       process.stdout.write(answer);

     });
    }
    else{
    process.stdout.write('You typed: ' + cmd);
    process.stdout.write('\nprompt > ');
    }
});
}

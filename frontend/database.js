var mysql = require('mysql');
var connection = mysql.createConnection({
    //local

    host:'localhost',
    user:'root',
    password:'sapassword',
    database:'joke'
});

var connect = function(){
    connection.connect(function(err){
        if(!err){
            console.log("connected");
        }else{
            console.log("error kết nối lần 2");
        }
    })
}
var closeDB = function(){
    connection.end(function(err){
        if(!err){
            console.log("close");
        }else{
            console.log("error cloes");
        } 
    })
}

exports.getAllStory = function(callbackQuery){
    connect();
    connection.query("SELECT * FROM story", function(err, results,fields){
        if(!err){
            callbackQuery(results);
        }else{
            console.log(err);
           
        }
    })  
};
exports.updateStory = function(id,funny,notfunny){
    connect();
    connection.query("UPDATE story SET funny = ?, notfunny = ? WHERE (id = ?);",
    [funny,notfunny,id],(err,results)=>{
        if(!err){
            
        }else{
            console.log(err);
            results = null;
        }
    }) 
};
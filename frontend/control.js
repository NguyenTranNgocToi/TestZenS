var database = require("./database");
const cookieParser = require('cookie-parser');
const { redirect } = require("express/lib/response");



module.exports.trangchu = function (req, res) {
    var stories;
    var idstory =-1;

    console.log(req.query);
    const{cookies} =req;
    console.log("cookie here"+cookies.number);

  

   

    database.getAllStory(function(resultsQuery){
        stories =resultsQuery;
        var story ;
        var idstory ;

        if(cookies.number != undefined){
            // có cookie
            if(Number(cookies.number )< Number(cookies.maxnumber)-1)
            {
                var ms = Number(cookies.number)+1;
                // console.log("ms="+ms);

                
                res.cookie('number', ms);
                story = stories[ms].story;
                idstory = stories[ms].id;
                res.cookie('maxnumber', stories.length);
                return res.render("joke", {story, idstory});
            }
            //cookie là story cuối 
           if(Number(cookies.number)== Number(cookies.maxnumber)-1){
            story = "That's all the jokes for today!";
            return res.render("joke", {story,idstory});
           }
        }
            
    
        if(cookies.number == undefined){
            // console.log("không có cookie");
            res.cookie('number', 0);

             story = stories[0].story;
             idstory = stories[0].id;
            res.cookie('maxnumber', stories.length);
            return res.render("joke", {story, idstory});
        }
          



      
    });
 
};

module.exports.funny = function (req, res) {
    var id = req.query.id;
    database.getAllStory(function(resultsQuery){
        stories =resultsQuery;
        for(let i =0 ; i< stories.length; i++){
            if(id == stories[i].id)
                database.updateStory(id, Number(stories[i].funny)+1,stories[i].notfunny);
        }

        res.redirect("http://localhost:3000/joke");
    });
          
};

module.exports.notfunny = function (req, res) {
    var id = req.query.id;
    database.getAllStory(function(resultsQuery){
        stories =resultsQuery;
        for(let i =0 ; i< stories.length; i++){
            if(id == stories[i].id)
                database.updateStory(id, stories[i].funny,Number(stories[i].notfunny)+1);
        }

        res.redirect("http://localhost:3000/joke");
    });
          
};
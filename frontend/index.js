const express = require('express');
const app = express();

const cookieParser = require('cookie-parser');
var database = require("./database");


var controller = require('./control');



app.use(cookieParser());




app.use(express.json({ extended: false }));
app.use(express.static('./views'));


app.set('view engine', 'ejs');
app.set('views', './views');

app.get('/joke',controller.trangchu);

app.get('/funny',controller.funny);

app.get('/unfunny',controller.notfunny);

const PORT =  3000;
app.listen(PORT, () => {
    console.log('Server is running on port 3000!');
});
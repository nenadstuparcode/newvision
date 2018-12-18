var express = require('express');
var app = express();
var image = express();
const cors = require('cors')
const corsOptions = {
  origin: 'http://localhost:4200',
  optionsSuccessStatus: 200
}
app.use(cors(corsOptions));
 
global.__basedir = __dirname;
 
let router = require('./app/routers/file.router.js');
app.use('/', router);

// Create a Server
  let server = app.listen(8080, () => {

  let host = server.address().address
  let port = server.address().port

  console.log("App listening at http://%s:%s", host, port); 
})

image.use(cors(corsOptions));
image.use('/uploads', express.static(__dirname + '/uploads'));
var imageServer = image.listen(5000, ()=>{
  console.log('imageServer is running on port 5000')
});


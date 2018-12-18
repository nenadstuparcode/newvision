var express = require('express')
var cors = require('cors')
var bodyParser = require('body-parser')
var multer = require('multer')
var app = express()
var port = process.env.PORT || 8000

app.use(bodyParser.json())
app.use(cors())
app.use(
  bodyParser.urlencoded({
    extended: false
  })
)

var Users = require('./routes/Users')
var Companys = require('./routes/Companys')
var Educations = require('./routes/Educations')
var JobTypes = require('./routes/JobTypes')
var Experiences = require('./routes/Experiences')
var JobLocations = require('./routes/JobLocations')
var SkillSets = require('./routes/SkillSets')
var Languages = require('./routes/Languages')
var DriverLicences = require('./routes/DriverLicences')
var Messages = require('./routes/Messages')
var JobPosts = require('./routes/JobPosts')


app.use('/users', Users)
app.use('/companys', Companys)
app.use('/educations', Educations)
app.use('/jobtypes', JobTypes)
app.use('/experiences', Experiences)
app.use('/joblocations', JobLocations)
app.use('/skillsets', SkillSets)
app.use('/languages', Languages)
app.use('/driverlicences', DriverLicences)
app.use('/messages' , Messages)
app.use('/jobposts', JobPosts)


app.listen(3000);


app.listen(port, function() {
  console.log('Server is running on port: ' + port)
})

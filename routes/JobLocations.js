const express = require('express')
const joblocations = express.Router()
const cors = require('cors')


const JobLocation = require('../models/JobLocation')
joblocations.use(cors())

process.env.SECRET_KEY = 'secret'


//ADD JOB LOCATION 

joblocations.post('/joblocation/add', (req,res)=> {
    const joblocationData = {
        id:req.body.id,
        street_address: req.body.street_address, 
        city: req.body.city,
        country: req.body.country
    }

    JobLocation.findOne({
        where: {
            id:id
        }
    })
    .then(joblocation => {
        JobLocation.create(joblocationData)
    })
    .catch(err => {
        res.send('error: ' + err)
      })
})






module.exports = joblocations
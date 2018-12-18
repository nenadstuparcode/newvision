const express = require('express')
const jobtypes = express.Router();
const cors = require('cors')



const JobType = require('../models/JobType')

jobtypes.use(cors())


// ADD NEW JOBTYPE 
jobtypes.post('/addjobtype', (req,res)=>{
    const jobtypeData = {
        job_types: req.body.job_types
    }


    JobType.findOne({
        where: {
            job_types: req.body.job_types
        }
    })
    .then(jobtype=>{
        if(!jobtype) {
            JobType.create(jobtypeData)
        } else {
            res.json({error: "Jobtype already exists"})
        }
    })
    .catch(err => {
        res.send('error', err)
    })
})
//GET ALL JOBTYPES
jobtypes.get('/alljobtypes', (req,res)=>{
    JobType.findAll()
    .then(jobtypes => {
        res.json(jobtypes)
    })
    .catch(err => {
        res.send('error', err)
    })
})

module.exports= jobtypes
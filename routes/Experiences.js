const express = require('express')
const experiences = express.Router()
const cors = require('cors')


const Experience = require('../models/Experience')
experiences.use(cors())

process.env.SECRET_KEY = 'secret'


//  ADD EXPERIENCE
experiences.post('/experience/add', (req,res)=> {
    const experienceData = { 
        user_account_id: req.body.user_account_id, 
        company_name : req.body.company_name,
        job_position : req.body.job_position,
        start_date : req.body.start_date,
        end_date : req.body.end_date, 
        job_description : req.body.job_description,
    }

    Experience.findOne({
        where: {
           
        }
    })
    .then(experience => {
        if(experience) {
            Experience.create(experienceData)
        } else {
            res.json({error: 'User does not exist anymore' })
        }
       
    })
    .catch(err => {
        res.send('error: ' + err)
      })
})

// GET EXPERIENCE FROM USER
experiences.get('/experience/:user_account_id',(req,res)=> {
    const user_account_id = req.params.user_account_id
    Experience.findAll({
        where: {
         user_account_id: user_account_id
        }
    })
    .then(experience => {
       if(experience) {
           res.json(experience)
       } else {
           res.send('There is no experience info for this user')
       }
    })
    .catch(err => {
     res.send('error: ' + err)
   })
})


// Get experience list 
experiences.get('/experience-list', (req,res)=>{
    Experience.findAll()
    .then(experience => {
        if(experience) {
            res.json(experience)
        } else {
            res.send('The list of educations is empty')
        }
     })
     .catch(err => {
      res.send('error: ' + err)
    })
})

// Experience update 

experiences.patch('/experience/update/:id', (req,res)=> {
    const company_name = req.body.company_name;
    const job_position = req.body.job_position;
    const start_date = req.body.start_date;
    const end_date = req.body.end_date;
    const job_description = req.body.job_description;


    Experience.find({
        where: {
          id: req.params.id
        }
    })
    .then(experience => {
        return experience.updateAttributes(
            {
                company_name,
                job_position,
                start_date,
                end_date,
                job_description
            }
        )
    })
    .then(updatedExperience=> {
        res.send(updatedExperience)
    })
})
//EXPERIENCE DELETE
experiences.delete('/experience/delete/:id', (req,res)=>{
    const id = req.params.id;



    Experience.destroy({
        where: { id: id }
    })
    .then(deletedExperience=> {
        res.json(deletedExperience)
    })

})


module.exports = experiences




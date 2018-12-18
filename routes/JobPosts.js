const express = require('express')
const jobposts = express.Router()
const cors = require('cors')


const JobPost = require('../models/JobPost')
jobposts.use(cors())

process.env.SECRET_KEY = 'secret'


//Add education 
jobposts.post('/jobpost/add', (req,res)=> {
    const jobpostData  = {
        posted_by_id: req.body.user_account_id,
        created_date: req.body.created_date,
        job_title: req.body.job_title,
        job_description: req.body.job_description,
        job_deadline: req.body.job_deadline,
        job_profession: req.body.job_profession,
        job_position: req.body.job_position,
        job_city: req.body.job_city,
        job_country: req.body.job_country,
        job_description_full: req.body.job_description_full
    }

    JobPost.findOne({
        where: {
     
        }
    })
    .then(jobpost => {
        if(jobpost){
            JobPost.create(jobpostData)
        } else {
            res.json({error: 'user does not exist anymore'})
        }
    })
    .catch(err => {
        res.send('error: ' + err)
      })
})
// Get education by User ID
jobposts.get('/jobpost/:user_account_id',(req,res)=> {
       const user_account_id = req.params.user_account_id
       JobPost.findAll({
           where: {
            posted_by_id: user_account_id
           }
       })
       .then(jobpost => {
          if(jobpost) {
              res.json(jobpost)
          } else {
              res.send('There is no education info for this user')
          }
       })
       .catch(err => {
        res.send('error: ' + err)
      })
})

// Get education list 
jobposts.get('/education-list', (req,res)=>{
    JobPost.findAll()
    .then(education => {
        if(education) {
            res.json(education)
        } else {
            res.send('The list of educations is empty')
        }
     })
     .catch(err => {
      res.send('error: ' + err)
    })
})


//Education update 
jobposts.patch('/jobpost/update/:id', (req,res)=>{
     const posted_by_id = req.body.user_account_id
     const   created_date = req.body.created_date
     const job_title = req.body.job_title
     const    job_description = req.body.job_description
     const   job_deadline= req.body.job_deadline
     const   job_profession= req.body.job_profession
     const  job_position = req.body.job_position
     const   job_city = req.body.job_city
     const   job_country = req.body.job_country
     const   job_description_full = req.body.job_description_full
 
    JobPost.find({
        where: {
            id: req.params.id
        }
    })
    .then(jobpost =>{
        return jobpost.updateAttributes(
            {posted_by_id
            ,created_date,
            job_title,
            job_description,
            job_deadline,
            job_profession,
            job_position,
            job_city,
            job_country,
            job_description_full
        }
            )
    })
    .then(updatedPost=> {
        res.send(updatedPost)
    })

})


jobposts.delete('/jobpost/delete/:id', (req,res)=>{
    const id = req.params.id;
    JobPost.destroy({
        where: { id: id }
    })
    .then(deletedPost=> {
        res.json(deletedPost)
    })

})

module.exports = jobposts




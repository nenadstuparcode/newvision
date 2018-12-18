const express = require('express')
const educations = express.Router()
const cors = require('cors')


const Education = require('../models/Education')
educations.use(cors())

process.env.SECRET_KEY = 'secret'


//Add education 
educations.post('/add-education', (req,res)=> {
    const educationData  = {
        user_account_id: req.body.user_account_id,
        certificate_degree_name: req.body.certificate_degree_name,
        Institute_university_name: req.body.Institute_university_name,
        starting_date: req.body.starting_date,
        completion_date:req.body.completion_date,
        education_desc:req.body.education_desc   
    }

    Education.findOne({
        where: {
     
        }
    })
    .then(education => {
        if(education){
            Education.create(educationData)
        } else {
            res.json({error: 'user does not exist anymore'})
        }
    })
    .catch(err => {
        res.send('error: ' + err)
      })
})
// Get education by User ID
educations.get('/education/:user_account_id',(req,res)=> {
       const user_account_id = req.params.user_account_id
       Education.findAll({
           where: {
            user_account_id: user_account_id
           }
       })
       .then(education => {
          if(education) {
              res.json(education)
          } else {
              res.send('There is no education info for this user')
          }
       })
       .catch(err => {
        res.send('error: ' + err)
      })
})

// Get education list 
educations.get('/education-list', (req,res)=>{
    Education.findAll()
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
educations.patch('/education/update/:id', (req,res)=>{
    const certificate_degree_name = req.body.certificate_degree_name;
    const Institute_university_name = req.body.Institute_university_name;
    const starting_date = req.body.starting_date;
    const completion_date = req.body.completion_date;
    const education_desc = req.body.education_desc;
 
    Education.find({
        where: {
            id: req.params.id
        }
    })
    .then(education =>{
        return education.updateAttributes(
            {certificate_degree_name
            ,Institute_university_name,
            starting_date,
            completion_date,
            education_desc}
            )
    })
    .then(updatedEducation=> {
        res.send(updatedEducation)
    })

})


educations.delete('/education/delete/:id', (req,res)=>{
    const id = req.params.id;
    Education.destroy({
        where: { id: id }
    })
    .then(deletedEducation=> {
        res.json(deletedEducation)
    })

})

module.exports = educations




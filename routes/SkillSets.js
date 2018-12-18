const express = require('express')
const skillsets = express.Router()
const cors = require('cors')


const SkillSets = require('../models/Skillset')
skillsets.use(cors())

process.env.SECRET_KEY = 'secret'


//Add education 
skillsets.post('/skillset/add', (req,res)=> {
    const skillsetData  = {
        user_account_id: req.body.user_account_id,
        skill_set_name: req.body.skill_set_name
    }

    SkillSets.findOne({
        where: {
          
        }
    })
    .then(skillset => {
        if(skillset){
            SkillSets.create(skillsetData)
        } else {
            res.json({error: 'user does not exist anymore'})
        }
    })
    .catch(err => {
        res.send('error: ' + err)
      })
})
// Get education by User ID
skillsets.get('/skillset/:user_account_id',(req,res)=> {
       const user_account_id = req.params.user_account_id
       SkillSets.findAll({
           where: {
            user_account_id: user_account_id
           }
       })
       .then(skillset => {
          if(skillset) {
              res.json(skillset)
          } else {
              res.send('There is no skillset info for this user')
          }
       })
       .catch(err => {
        res.send('error: ' + err)
      })
})

// Get education list 
skillsets.get('/skillset/list', (req,res)=>{
    SkillSets.findAll()
    .then(skillset => {
        if(skillset) {
            res.json(skillset)
        } else {
            res.send('The list of skillsets is empty')
        }
     })
     .catch(err => {
      res.send('error: ' + err)
    })
})


//Education update 
skillsets.patch('/skillset/update/:id', (req,res)=>{
   const  user_account_id= req.body.user_account_id;
    const  skill_set_name= req.body.skill_set_name;
 
    SkillSets.find({
        where: {
            id: req.params.id
        }
    })
    .then(skillset =>{
        return skillset.updateAttributes(
            {
                user_account_id,
                skill_set_name
            }
        )
    })
    .then(updateSkillset=> {
        res.send(updateSkillset)
    })

})


skillsets.delete('/skillset/delete/:id', (req,res)=>{
    const id = req.params.id;
    SkillSets.destroy({
        where: { id: id }
    })
    .then(deletedSkillset=> {
        res.json(deletedSkillset)
    })

})

module.exports = skillsets




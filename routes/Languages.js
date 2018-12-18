const express = require('express')
const languages = express.Router()
const cors = require('cors')


const Languages = require('../models/Language')
languages.use(cors())

process.env.SECRET_KEY = 'secret'


//Add languages 
languages.post('/language/add', (req,res)=> {
    const languageData  = {
        user_account_id: req.body.user_account_id,
        language_name: req.body.language_name,
        language_level: req.body.language_level
    }

    Languages.findOne({
        where: {
          
        }
    })
    .then(language => {
        if(language){
            Languages.create(languageData)
        } else {
            res.json({error: 'user does not exist anymore'})
        }
    })
    .catch(err => {
        res.send('error: ' + err)
      })
})
// Get education by User ID
languages.get('/language/:user_account_id',(req,res)=> {
       const user_account_id = req.params.user_account_id
       Languages.findAll({
           where: {
            user_account_id: user_account_id
           }
       })
       .then(language => {
          if(language) {
              res.json(language)
          } else {
              res.send('There is no language info for this user')
          }
       })
       .catch(err => {
        res.send('error: ' + err)
      })
})

// Get education list 
languages.get('/language/list', (req,res)=>{
    Languages.findAll()
    .then(language => {
        if(language) {
            res.json(language)
        } else {
            res.send('The list of skillsets is empty')
        }
     })
     .catch(err => {
      res.send('error: ' + err)
    })
})


//Education update 
languages.patch('/language/update/:id', (req,res)=>{
   const  user_account_id= req.body.user_account_id;
    const  language_name= req.body.language_name;
    const language_level = req.body.language_level;
 
    Languages.find({
        where: {
            id: req.params.id
        }
    })
    .then(language =>{
        return language.updateAttributes(
            {
                user_account_id,
                language_name
            }
        )
    })
    .then(updateLanguage=> {
        res.send(updateLanguage)
    })

})


languages.delete('/language/delete/:id', (req,res)=>{
    const id = req.params.id;
    Languages.destroy({
        where: { id: id }
    })
    .then(deletedLanguage=> {
        res.json(deletedLanguage)
    })

})

module.exports = languages




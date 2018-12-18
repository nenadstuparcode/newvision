const express = require('express')
const messages = express.Router()
const cors = require('cors')


const Message = require('../models/Message')
messages.use(cors())

process.env.SECRET_KEY = 'secret'


//Add education 
messages.post('/message/add', (req,res)=> {
    const messageData  = {
        sender_id: req.body.sender_id,
        reciever_id: req.body.reciever_id,
        content: req.body.content,
        message_time: req.body.message_time
    }

    Message.findOne({
        where: {
     
        }
    })
    .then(message => {
        if(message){
            Message.create(messageData)
        } else {
            res.json({error: 'user does not exist anymore'})
        }
    })
    .catch(err => {
        res.send('error: ' + err)
      })
})
// Get education by User ID
messages.get('/message/:user_account_id',(req,res)=> {
       const user_account_id = req.params.user_account_id
       Message.findAll({
           where: {
            user_account_id: user_account_id
           }
       })
       .then(message => {
          if(message) {
              res.json(message)
          } else {
              res.send('There is no message info for this user')
          }
       })
       .catch(err => {
        res.send('error: ' + err)
      })
})

// Get education list 
messages.get('/message/list', (req,res)=>{
    Education.findAll()
    .then(message => {
        if(message) {
            res.json(message)
        } else {
            res.send('The list of message is empty')
        }
     })
     .catch(err => {
      res.send('error: ' + err)
    })
})


//Education update 
messages.patch('/message/update/:id', (req,res)=>{
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
    .then(message =>{
        return message.updateAttributes(
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


messages.delete('/message/delete/:id', (req,res)=>{
    const id = req.params.id;
    Message.destroy({
        where: { id: id }
    })
    .then(deletedMessage=> {
        res.json(deletedMessage)
    })

})

module.exports = messages




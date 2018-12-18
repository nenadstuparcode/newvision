const express = require('express')
const driverlicences = express.Router()
const cors = require('cors')


const DriverLicences = require('../models/DriverLicence')
driverlicences.use(cors())

process.env.SECRET_KEY = 'secret'


//Add  
driverlicences.post('/driverlicence/add', (req,res)=> {
    const drData  = {
        user_account_id: req.body.user_account_id,
        dr_licence_type : req.body.dr_licence_type ,
        dr_licence_name : req.body.dr_licence_name 
    }

    DriverLicences.findOne({
        where: {
          
        }
    })
    .then(driverlicence => {
        if(driverlicence){
            DriverLicences.create(drData)
        } else {
            res.json({error: 'user does not exist anymore'})
        }
    })
    .catch(err => {
        res.send('error: ' + err)
      })
})
// Get education by User ID
driverlicences.get('/driverlicence/:user_account_id',(req,res)=> {
       const user_account_id = req.params.user_account_id
       DriverLicences.findAll({
           where: {
            user_account_id: user_account_id
           }
       })
       .then(driverlicence => {
          if(driverlicence) {
              res.json(driverlicence)
          } else {
              res.send('There is no driverlicence info for this user')
          }
       })
       .catch(err => {
        res.send('error: ' + err)
      })
})

// Get education list 
driverlicences.get('/driverlicence/list', (req,res)=>{
    DriverLicences.findAll()
    .then(driverlicence => {
        if(driverlicence) {
            res.json(driverlicence)
        } else {
            res.send('The list of skillsets is empty')
        }
     })
     .catch(err => {
      res.send('error: ' + err)
    })
})





driverlicences.delete('/driverlicence/delete/:id', (req,res)=>{
    const id = req.params.id;
    DriverLicences.destroy({
        where: { id: id }
    })
    .then(deletedDriverLicence=> {
        res.json(deletedDriverLicence)
    })

})

module.exports = driverlicences




const express = require('express')
const users = express.Router()
const cors = require('cors')
const jwt = require('jsonwebtoken')
const bcrypt = require('bcryptjs')


const User = require('../models/User')
users.use(cors())


//USER REGISTRATION
users.post('/register', (req, res) => {
  const today = new Date()
  const hash = bcrypt.hashSync(req.body.password, 10);

  const userData = {
    first_name: req.body.first_name,
    last_name: req.body.last_name,
    email: req.body.email,
    password: hash,
    created: today,
    user_type_id: req.body.user_type_id,
    date_of_birth: req.body.date_of_birth,
    gender: req.body.gender,
    contact_number: req.body.contact_number,
    country: req.body.country,
    city: req.body.city,
    address: req.body.address,
    company_name: req.body.company_name,
    profession_type_name: req.body.profession_type_name
  }

  User.findOne({
    where: {
      email: req.body.email
    }
  })
    //TODO bcrypt
    .then(user => {
      if (!user) {
        User.create(userData)
          .then(user => {
            let token = jwt.sign(user.dataValues, process.env.SECRET_KEY, {
              expiresIn: 1440
            })
            res.json({ token: token })
          })
          .catch(err => {
            res.send('error: ' + err)
          })
      } else {
        res.json({ error: 'User already exists' })
      }
    })
    .catch(err => {
      res.send('error: ' + err)
    })
})
//LOGIN WITH TOKEN
users.post('/login', (req, res) => {
  User.findOne({
    where: {
      email: req.body.email
    }
  })
    .then(user => {
      if (user) {
        var validPass = bcrypt.compareSync(req.body.password, user.password);
        if(validPass) {
          let token = jwt.sign(user.dataValues, process.env.SECRET_KEY, {
            expiresIn: 6440
          })
          res.json({ token: token })
        }else {
          res.send('User does not exist')
        }
      } 
    })
    .catch(err => {
      res.send('error: ' + err)
    })
})
//YOUR PROFILE
users.get('/profile', (req, res) => {
  var decoded = jwt.verify(req.headers['authorization'], process.env.SECRET_KEY)

  User.findOne({
    where: {
      id: decoded.id
    }
  })
    .then(user => {
      if (user) {
        res.json(user)
      } else {
        res.send('User does not exist')
      }
    })
    .catch(err => {
      res.send('error: ' + err)
    })
})


//UPDATE USER
users.patch('/edit/:id', (req,res)=> {
   var id = req.params.id; 
   var password = req.body.password;
   var date_of_birth = req.body.date_of_birth;
   var gender = req.body.gender;
   var contact_number  = req.body.contact_number; 
   var first_name = req.body.first_name;
   var last_name = req.body.last_name;
   var city = req.body.city;
   var country =  req.body.country;
   var address = req.body.address;
   var company_name = req.body.company_name
   var short_desc = req.body.short_desc
   var profession_type_name = req.body.profession_type_name
   User.find({
     where: {
       id: id
     }
   })
   .then(user=> {
       return user.updateAttributes(
         {
           
            password,
            date_of_birth,
            gender,
            contact_number,
            first_name, 
            last_name,
            city,
            country,
            address,
            company_name,
            short_desc,
            profession_type_name
        }
       )
   })

.catch(err=>{
  res.send('error', err)
  })
})


//DELETE USER
users.delete('/user-delete/:id', (req, res)=>{
  const id = req.params.id;

  User.destroy({
    where: {id: id}
  })
  .then(deletedUser => {
    res.json(deletedUser)
  })
})

module.exports = users

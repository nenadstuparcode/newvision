const express = require('express')
const companys = express.Router()
const cors = require('cors')



const Company = require('../models/Company')
companys.use(cors())



// Post company (register company)
companys.post('/register-company', (req, res) => {
  const companyData = {
    id: req.body.id,
    company_name: req.body.company_name,
    profile_description: req.body.profile_description,
    business_stream_id: req.body.business_stream_id,
    company_email: req.body.company_email,
    establishment_date: req.body.establishment_date,
    company_website_url: req.body.company_website_url,
    contact_number: req.body.contact_number 
  }

  Company.findOne({
    where: {
      company_email: req.body.company_email
    }
  })
  .then(company => {
    if (!company) {
      Company.create(companyData)
    } else {
      res.json({ error: 'Company already exists' })
    }
  })
  .catch(err => {
    res.send('error: ' + err)
  })
})
// Get company by id 
companys.get('/find-company/:id', (req,res)=>{
  const id = req.params.id;
  Company.findOne({
    where:{
       id: id
    }
  })
  .then (company => {
    if(company){
      res.json(company)
    } else {
      res.send('Company with this ID does not exist' )
    }
  })
  .catch(err => {
    res.send('error: ' + err)
  })
})

// Get company by company_name 
companys.get('/find-company/:name', (req,res)=>{
  const name = req.params.name;
  Company.findOne({
    where:{
       company_name: name
    }
  })
  .then (company => {
    if(company){
      res.json(company)
    } else {
      res.send('Company with this name does not exist' )
    }
  })
  .catch(err => {
    res.send('error: ' + err)
  })
})

// Get company by profession 
companys.get('/find-company/:business_stream_id', (req,res)=>{
  const business_stream_id = req.params.business_stream_id;
  Company.findOne({
    where:{
      business_stream_id: business_stream_id
    }
  })
  .then (company => {
    if(company){
      res.json(company)
    } else {
      res.send('Company with this name does not exist')
    }
  })
  .catch(err => {
    res.send('error: ' + err)
  })
})


 // DELETE company by id
 companys.delete('/company-delete/:id', (req, res) => {
  const id = req.params.id;
  Company.destroy({
    where: { id: id }
  })
    .then(deletedCompany => {
      res.json(deletedCompany.company_name);
    });
});





module.exports = companys

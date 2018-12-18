const Sequelize = require('sequelize')
const db = require('../database/db.js')

module.exports = db.sequelize.define(
  'job_posts',
  {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    
    posted_by_id:{
        type: Sequelize.INTEGER
    }, 
    job_type_id:{
        type: Sequelize.INTEGER
    }, 
    company_id:{
        type: Sequelize.INTEGER
    },
    created_date:{
        type: Sequelize.DATE,
        defaultValue: Sequelize.NOW
    },
    job_deadline: {
        type: Sequelize.DATE
    },
    job_title:{
        type:Sequelize.STRING
    },
    job_description: {
        type:Sequelize.STRING
    },
    job_location_id: {
        type:Sequelize.INTEGER
    },
    is_active:{ 
        type:Sequelize.INTEGER
    },
    job_profession: {
        type: Sequelize.STRING
    },
    job_position: {
        type: Sequelize.STRING
    },
    job_country: {
        type:Sequelize.STRING
    },
    job_city: {
        type:Sequelize.STRING
    },
    job_description_full:{
        type:Sequelize.STRING
    }


  },
  {
    timestamps: false
  }
)

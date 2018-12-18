const Sequelize = require('sequelize')
const db = require('../database/db.js')

module.exports = db.sequelize.define(
  'company',
  {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    company_name: {
      type: Sequelize.STRING
    },
    profile_description:{
      type: Sequelize.STRING
    },
    business_stream_id:{
        type: Sequelize.INTEGER
      },
    company_email: {
      type: Sequelize.STRING
    },
    company_website_url :{
        type: Sequelize.STRING
      },
    establishment_date: {
      type:Sequelize.DATE
    },
    contact_number:{
      type:Sequelize.INTEGER
    }
  },
  {
    timestamps: false
  }
)

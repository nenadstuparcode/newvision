const Sequelize = require('sequelize')
const db = require('../database/db.js')

module.exports = db.sequelize.define(
  'education_details',
  {
    user_account_id: {
      type: Sequelize.INTEGER
    },
    certificate_degree_name:{
        type: Sequelize.STRING
    },
    Institute_university_name: {
        type: Sequelize.STRING
    },
    starting_date: {
        type: Sequelize.DATE
    },
    completion_date: {
        type: Sequelize.DATE
    },
    education_desc: {
      type: Sequelize.STRING
    }

  },
  {
    timestamps: false
  }
)

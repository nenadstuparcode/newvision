const Sequelize = require('sequelize')
const db = require('../database/db.js')

module.exports = db.sequelize.define(
  'job_location',
  {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    
    street_address:{
        type: Sequelize.STRING
    },
    city:{
        type: Sequelize.STRING
    },
    country:{
        type: Sequelize.STRING
    }

  },
  {
    timestamps: false
  }
)

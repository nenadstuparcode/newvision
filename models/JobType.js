const Sequelize = require('sequelize')
const db = require('../database/db.js')

module.exports = db.sequelize.define(
  'job_types',
  {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    
    job_types:{
        type: Sequelize.STRING
    } 
  },
  {
    timestamps: false
  }
)



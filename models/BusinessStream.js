const Sequelize = require('sequelize')
const db = require('../database/db.js')

module.exports = db.sequelize.define(
  'business_stream',
  {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    
    business_stream_name:{
        type: Sequelize.STRING
    } 
  },
  {
    timestamps: false
  }
)

const Sequelize = require('sequelize')
const db = require('../database/db.js')

module.exports = db.sequelize.define(
  'driverlicences',
  {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    user_account_id: {
      type: Sequelize.INTEGER
    },
    dr_licence_name :{
      type: Sequelize.STRING
    },
    dr_licence_type :{
        type:Sequelize.STRING
    }
  },
  {
    timestamps: false
  }
)

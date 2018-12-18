const Sequelize = require('sequelize')
const db = require('../database/db.js')

module.exports = db.sequelize.define(
  'seeker_skill_sets',
  {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    user_account_id: {
      type: Sequelize.INTEGER
    },
    skill_set_name:{
      type: Sequelize.STRING
    }
  },
  {
    timestamps: false
  }
)

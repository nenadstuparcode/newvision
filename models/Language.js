const Sequelize = require('sequelize')
const db = require('../database/db.js')

module.exports = db.sequelize.define(
  'user_languages',
  {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    user_account_id: {
      type: Sequelize.INTEGER
    },
    language_name :{
      type: Sequelize.STRING
    },
    language_level: {
        type: Sequelize.INTEGER
    }
  },
  {
    timestamps: false
  }
)

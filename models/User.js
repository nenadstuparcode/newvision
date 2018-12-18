const Sequelize = require('sequelize')
const db = require('../database/db.js')

module.exports = db.sequelize.define(
  'user_account',
  {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    first_name: {
      type: Sequelize.STRING
    },
    last_name: {
      type: Sequelize.STRING
    },
    email: {
      type: Sequelize.STRING
    },
    password: {
      type: Sequelize.STRING
    },
    created: {
      type: Sequelize.DATE,
      defaultValue: Sequelize.NOW
    },
    user_type_id: {
      type:Sequelize.INTEGER
    },
    date_of_birth: {
      type:Sequelize.DATE
    },
    gender: {
      type:Sequelize.STRING
    },
    contact_number:{
      type:Sequelize.STRING
    },
    city: {
      type:Sequelize.STRING
    },
    country: {
      type:Sequelize.STRING
    },
    address: {
      type:Sequelize.STRING
    },
    company_name: {
      type:Sequelize.STRING
    },
    company_id: {
      type: Sequelize.INTEGER
    },
    short_desc:{
      type:Sequelize.STRING
    },
    profession_type_name: {
      type:Sequelize.STRING
    }
  },
  {
    timestamps: false
  }
)

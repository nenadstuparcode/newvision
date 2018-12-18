const Sequelize = require('sequelize')
const db = require('../database/db.js')

module.exports = db.sequelize.define(
  'messages',
  {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    sender_id : {
      type: Sequelize.INTEGER
    },
    reciever_id :{
      type: Sequelize.INTEGER
    },
    content: {
      type: Sequelize.STRING
    }, 
    message_time: {
      type: Sequelize.DATE,
      defaultValue: Sequelize.NOW
    }
  },
  {
    timestamps: false
  }
)

const Sequelize = require('sequelize')
const db = require('../database/db.js')

module.exports = db.sequelize.define(
    'image',
    {
          type: {
            type: Sequelize.STRING
          },
          name: {
            type: Sequelize.STRING
          },
          data: {
            type: Sequelize.BLOB('long')
          },
          user_account_id: {
              type:Sequelize.INTEGER
          }

    },
    {
        timestamps: false
    }
   
  )
const Sequelize = require('sequelize');
const db = require('../database/db.js');


module.exports = db.sequelize.define(
    'experiences', 
    {
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true,
            autoIncrement: true
          },
            user_account_id : {
            type: Sequelize.STRING
          },
            company_name  : {
            type: Sequelize.STRING
          },
          job_position   : {
            type: Sequelize.STRING
          },
          start_date : {
              type: Sequelize.DATE
          },
          end_date: {
              type:Sequelize.DATE
          }, 
          job_location : {
              type:Sequelize.STRING
          }, 
          job_country : {
              type:Sequelize.STRING
          },
          job_description : {
              type: Sequelize.STRING
          },
          is_current_job: {
              type: Sequelize.CHAR(3)
          }
    },
    {
        timestamps: false
      }
)
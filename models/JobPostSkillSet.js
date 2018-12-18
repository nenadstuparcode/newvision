const Sequelize = require('sequelize')
const db = require('../database/db.js')

module.exports = db.sequelize.define(
  'job_post_skill_set',
  {
    skill_set_id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    
    job_post_id:{
        type: Sequelize.INTEGER
    }, 
    skill_level:{
        type: Sequelize.INTEGER
    }
  },
  {
    timestamps: false
  }
)

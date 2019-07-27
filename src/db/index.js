const Sequelize = require('sequelize');

const sequelize = new Sequelize('testdb', 'root', '', {
  dialect: 'mysql',
  pool: {
    min: 0,
    max: 5,
  },
})

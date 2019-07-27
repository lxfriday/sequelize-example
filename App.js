const Sequelize = require('sequelize');
const Model = Sequelize.Model;


const seq = new Sequelize('vdo', 'root', '', {
  dialect: 'mysql',
    pool: {
      min: 0,
      max: 5,
      acquire: 30000,
      idle: 10000
    }
  },
);


seq
  .authenticate()
  .then(() => {
    console.log('Connection has been established successfully.');
  })
  .catch(err => {
    console.error('Unable to connect to the database:', err);
  });

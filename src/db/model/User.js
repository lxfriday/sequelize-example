const Sequelize, { Model } = require('sequelize');

class User extends Model {}

User.init({
  name: Sequelize.String,
  email: Sequelize.String,
}, {
  sequelize: Sequelize,
  modelName: 'user',
})

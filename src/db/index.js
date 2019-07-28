const Sequelize = require('sequelize');
const fs = require('fs');
const path = require('path');

const sequelize = new Sequelize('testdb', 'root', 'root', {
  host: 'localhost',
  port: 8889,
  dialect: 'mysql',
  timezone: '+08:00', // 使用 sequelize.fn('NOW') 需要注意时区问题
  pool: {
    idle: 1000,
  },
  benchmark: true,
});

const modelPath = path.resolve(__dirname, './model');

const files = fs.readdirSync(modelPath);

const db = {};

files.forEach(fileName => {
  const modelName = fileName.slice(0, -3);
  db[modelName] = sequelize.import(path.resolve(modelPath, fileName));
});

module.exports = db;

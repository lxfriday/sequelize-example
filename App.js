const { like } = require('sequelize').Op;
const db = require('./src/db');


// create
// async function init() {
//   const users = await db.users.create({
//     name: 'lxfriday',
//     age: 33,
//   });
//   console.log(JSON.parse(JSON.stringify(users)));
// }


// bulkCreate
// async function init() {
//   const users = await db.users.bulkCreate([
//     {
//       name: 'lxfriday1',
//       age: 111,
//     },
//     {
//       name: 'lxfriday2',
//       age: 222,
//     },
//     {
//       name: 'lxfriday3',
//       age: 338,
//     },
//   ]);
//   console.log(JSON.parse(JSON.stringify(users)));
// }


// // findOrCreate
// async function init() {
//   const users = await db.users.findOrCreate({
//     where: {
//       name: 'lxfridaysss',
//       age: 3399,
//     },
//   });
//
//   const users2 = await db.users.findOrCreate({
//     where: {
//       name: 'lxfridaywww111',
//     },
//     defaults: {
//       age: 330099,
//     }
//   });
//   console.log(JSON.parse(JSON.stringify(users)));
//   console.log(JSON.parse(JSON.stringify(users2)));
// }



// findAll
// async function init() {
//   const users = await db.users.findAll({
//     attributes: {
//       exclude: ['name']
//     },
//     where: {
//       name: {
//         [like]: '%lxfriday%',
//       },
//     },
//     order: [
//       ['age', 'DESC'],
//       ['id', 'ASC'],
//       // 'id',
//     ],
//   });
//   console.log(JSON.parse(JSON.stringify(users)));
// }

// findByPk
// async function init() {
//   const res = await db.tpk.findByPk('lxfriday.xyz');
//   console.log(JSON.parse(JSON.stringify(res)));
// }



// findAndCountAll
// async function init() {
//   const res = await db.users.findAndCountAll({
//     where: {
//       name: {
//         [like]: '%lxfriday%',
//       },
//     },
//   });
//   console.log(JSON.parse(JSON.stringify(res)));
// }

// update
// async function init() {
//   const res = await db.users.update({
//     name: 'yuny',
//     age: 888,
//   }, {
//     where: {
//       name: {
//         [like]: '%lxfriday%',
//       },
//     },
//   });
//   console.log(JSON.parse(JSON.stringify(res)));
// }

// upsert
// async function init() {
//   const res = await db.users.upsert({
//     name: 'yuny',
//     age: 888,
//   }, {
//     where: {
//       name: 'lxfriday',
//     },
//   });
//   console.log(JSON.parse(JSON.stringify(res)));
// }

// min
async function init() {
  const res = await db.users.min('id');
  console.log(JSON.parse(JSON.stringify(res)));
}



init();




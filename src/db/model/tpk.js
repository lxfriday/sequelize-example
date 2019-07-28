/* jshint indent: 2 */

module.exports = function(sequelize, DataTypes) {
  return sequelize.define('tpk', {
    blog_url: {
      type: DataTypes.STRING(300),
      allowNull: false,
      primaryKey: true
    },
    view: {
      type: DataTypes.INTEGER(10),
      allowNull: true,
      unique: true
    }
  }, {
    tableName: 'tpk',
    timestamps: false,
  });
};

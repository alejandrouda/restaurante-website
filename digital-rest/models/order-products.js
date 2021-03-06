// This model was generated by Lumber. However, you remain in control of your models.
// Learn how here: https://docs.forestadmin.com/documentation/v/v6/reference-guide/models/enrich-your-models
module.exports = (sequelize, DataTypes) => {
  const { Sequelize } = sequelize;
  // This section contains the fields of your model, mapped to your table's columns.
  // Learn more here: https://docs.forestadmin.com/documentation/v/v6/reference-guide/models/enrich-your-models#declaring-a-new-field-in-a-model
  const OrderProducts = sequelize.define('orderProducts', {
    createdAt: {
      type: DataTypes.DATE,
    },
    updatedAt: {
      type: DataTypes.DATE,
    },
  }, {
    tableName: 'order_products',
    underscored: true,
    schema: process.env.DATABASE_SCHEMA,
  });

  // This section contains the relationships for this model. See: https://docs.forestadmin.com/documentation/v/v6/reference-guide/relationships#adding-relationships.
  OrderProducts.associate = (models) => {
    OrderProducts.belongsTo(models.tables, {
      foreignKey: {
        name: 'tableIdKey',
        field: 'table_id',
      },
      as: 'table',
    });
    OrderProducts.belongsTo(models.meals, {
      foreignKey: {
        name: 'mealIdKey',
        field: 'meal_id',
      },
      as: 'meal',
    });
    OrderProducts.belongsTo(models.orders, {
      foreignKey: {
        name: 'ordersIdKey',
        field: 'orders_id',
      },
      as: 'orders',
    });
    OrderProducts.belongsTo(models.setMenus, {
      foreignKey: {
        name: 'setMenuIdKey',
        field: 'set_menu_id',
      },
      as: 'setMenu',
    });
    OrderProducts.belongsTo(models.drinks, {
      foreignKey: {
        name: 'drinkIdKey',
        field: 'drink_id',
      },
      as: 'drink',
    });
  };

  return OrderProducts;
};

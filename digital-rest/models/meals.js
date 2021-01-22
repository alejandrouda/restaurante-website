// This model was generated by Lumber. However, you remain in control of your models.
// Learn how here: https://docs.forestadmin.com/documentation/v/v6/reference-guide/models/enrich-your-models
module.exports = (sequelize, DataTypes) => {
  const { Sequelize } = sequelize;
  // This section contains the fields of your model, mapped to your table's columns.
  // Learn more here: https://docs.forestadmin.com/documentation/v/v6/reference-guide/models/enrich-your-models#declaring-a-new-field-in-a-model
  const Meals = sequelize.define('meals', {
    name: {
      type: DataTypes.STRING,
    },
    price: {
      type: DataTypes.DOUBLE,
    },
    description: {
      type: DataTypes.STRING,
    },
    setMenuMeal: {
      type: DataTypes.BOOLEAN,
      defaultValue: false,
    },
    createdAt: {
      type: DataTypes.DATE,
    },
    updatedAt: {
      type: DataTypes.DATE,
    },
  }, {
    tableName: 'meals',
    underscored: true,
    schema: process.env.DATABASE_SCHEMA,
  });

  // This section contains the relationships for this model. See: https://docs.forestadmin.com/documentation/v/v6/reference-guide/relationships#adding-relationships.
  Meals.associate = (models) => {
    Meals.belongsTo(models.menus, {
      foreignKey: {
        name: 'menuIdKey',
        field: 'menu_id',
      },
      as: 'menu',
    });
    Meals.belongsToMany(models.allergens, {
      through: 'allergenTags',
      foreignKey: 'meal_id',
      otherKey: 'allergen_id',
      as: 'allergensThroughAllergenTags',
    });
    Meals.belongsToMany(models.mealCategories, {
      through: 'mealCategoryTags',
      foreignKey: 'meal_id',
      otherKey: 'meal_category_id',
      as: 'mealCategoriesThroughMealCategoryTags',
    });
    Meals.hasMany(models.ingredientTags, {
      foreignKey: {
        name: 'mealIdKey',
        field: 'meal_id',
      },
      as: 'ingredientTags',
    });
    Meals.hasMany(models.orderProducts, {
      foreignKey: {
        name: 'mealIdKey',
        field: 'meal_id',
      },
      as: 'orderProducts',
    });
  };

  return Meals;
};

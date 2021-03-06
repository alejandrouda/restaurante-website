// This model was generated by Lumber. However, you remain in control of your models.
// Learn how here: https://docs.forestadmin.com/documentation/v/v6/reference-guide/models/enrich-your-models
module.exports = (sequelize, DataTypes) => {
  const { Sequelize } = sequelize;
  // This section contains the fields of your model, mapped to your table's columns.
  // Learn more here: https://docs.forestadmin.com/documentation/v/v6/reference-guide/models/enrich-your-models#declaring-a-new-field-in-a-model
  const IngredientTags = sequelize.define('ingredientTags', {
    createdAt: {
      type: DataTypes.DATE,
    },
    updatedAt: {
      type: DataTypes.DATE,
    },
  }, {
    tableName: 'ingredient_tags',
    underscored: true,
    schema: process.env.DATABASE_SCHEMA,
  });

  // This section contains the relationships for this model. See: https://docs.forestadmin.com/documentation/v/v6/reference-guide/relationships#adding-relationships.
  IngredientTags.associate = (models) => {
    IngredientTags.belongsTo(models.ingredients, {
      foreignKey: {
        name: 'ingredientIdKey',
        field: 'ingredient_id',
      },
      as: 'ingredient',
    });
    IngredientTags.belongsTo(models.drinks, {
      foreignKey: {
        name: 'drinkIdKey',
        field: 'drink_id',
      },
      as: 'drink',
    });
    IngredientTags.belongsTo(models.meals, {
      foreignKey: {
        name: 'mealIdKey',
        field: 'meal_id',
      },
      as: 'meal',
    });
  };

  return IngredientTags;
};

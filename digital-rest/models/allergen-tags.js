// This model was generated by Lumber. However, you remain in control of your models.
// Learn how here: https://docs.forestadmin.com/documentation/v/v6/reference-guide/models/enrich-your-models
module.exports = (sequelize, DataTypes) => {
  const { Sequelize } = sequelize;
  // This section contains the fields of your model, mapped to your table's columns.
  // Learn more here: https://docs.forestadmin.com/documentation/v/v6/reference-guide/models/enrich-your-models#declaring-a-new-field-in-a-model
  const AllergenTags = sequelize.define('allergenTags', {
    createdAt: {
      type: DataTypes.DATE,
    },
    updatedAt: {
      type: DataTypes.DATE,
    },
  }, {
    tableName: 'allergen_tags',
    underscored: true,
    schema: process.env.DATABASE_SCHEMA,
  });

  // This section contains the relationships for this model. See: https://docs.forestadmin.com/documentation/v/v6/reference-guide/relationships#adding-relationships.
  AllergenTags.associate = (models) => {
    AllergenTags.belongsTo(models.allergens, {
      foreignKey: {
        name: 'allergenIdKey',
        field: 'allergen_id',
      },
      as: 'allergen',
    });
    AllergenTags.belongsTo(models.meals, {
      foreignKey: {
        name: 'mealIdKey',
        field: 'meal_id',
      },
      as: 'meal',
    });
  };

  return AllergenTags;
};

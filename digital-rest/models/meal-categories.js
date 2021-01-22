// This model was generated by Lumber. However, you remain in control of your models.
// Learn how here: https://docs.forestadmin.com/documentation/v/v6/reference-guide/models/enrich-your-models
module.exports = (sequelize, DataTypes) => {
  const { Sequelize } = sequelize;
  // This section contains the fields of your model, mapped to your table's columns.
  // Learn more here: https://docs.forestadmin.com/documentation/v/v6/reference-guide/models/enrich-your-models#declaring-a-new-field-in-a-model
  const MealCategories = sequelize.define(
    "mealCategories",
    {
      name: {
        type: DataTypes.STRING,
      },
      createdAt: {
        type: DataTypes.DATE,
      },
      updatedAt: {
        type: DataTypes.DATE,
      },
    },
    {
      tableName: "meal_categories",
      underscored: true,
      schema: process.env.DATABASE_SCHEMA,
    }
  );

  // This section contains the relationships for this model. See: https://docs.forestadmin.com/documentation/v/v6/reference-guide/relationships#adding-relationships.
  MealCategories.associate = (models) => {
    MealCategories.belongsToMany(models.meals, {
      through: "mealCategoryTags",
      foreignKey: "meal_category_id",
      otherKey: "meal_id",
      as: "mealsThroughMealCategoryTags",
    });
  };

  return MealCategories;
};

p "Deleting ingredient tags..."
IngredientTag.delete_all
p "Deleting ingredients..."
Ingredient.delete_all

p "Creating ingredients..."

fish_i = Ingredient.new(
                         name: "fish",
)
fish_i.save!
p fish_i

egg_i = Ingredient.new(
                         name: "egg",
)
egg_i.save!
p egg_i

flower = Ingredient.new(
                         name: "flower",
)
flower.save!
p flower

garlic = Ingredient.new(
                         name: "garlic",
)
garlic.save!
p garlic

p "Ingredients created!"

p "Creating ingredient tags..."

i_tag_1 = IngredientTag.new(
    meal_id: caneloni.id,
    ingredient_id: egg_i.id
)
i_tag_1.save!
p i_tag_1

i_tag_2 = IngredientTag.new(
    meal_id: caneloni.id,
    ingredient_id: garlic.id
)
i_tag_2.save!
p i_tag_2

i_tag_3= IngredientTag.new(
    meal_id: caneloni.id,
    ingredient_id: flower.id
)
i_tag_3.save!
p i_tag_3

i_tag_4 = IngredientTag.new(
    meal_id: fish.id,
    ingredient_id: fish_i.id
)
i_tag_4.save!
p i_tag_4

i_tag_5 = IngredientTag.new(
    meal_id: meat.id,
    ingredient_id: garlic.id
)
i_tag_5.save!
p i_tag_5

p "Ingredient tags created!"
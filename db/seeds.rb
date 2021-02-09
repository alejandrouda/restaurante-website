# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

#------------------------------- Delete all seeds-----------------------------

p "Deleting meal allergen tags..."
AllergenTag.delete_all
p "Deleting meal Allergens..."
Allergen.delete_all
p "Deleting meal category tags..."
MealCategoryTag.delete_all
p "Deleting meal categories..."
MealCategory.delete_all
p "Deleting meals..."
FilterTag.delete_all
p "Deleting meal categories..."
Filter.delete_all
p "Deleting meals..."
Meal.delete_all
p "Deleting drink category tags..."
DrinkCategoryTag.delete_all
p "Deleting drink categories..."
DrinkCategory.delete_all
p "Deleting drinks..."
Drink.delete_all
p "Deleting menus..."
Menu.delete_all
p "Deleting set menus..."
SetMenu.delete_all
p 'Deleting dashboards...'
Dashboard.delete_all
p "Deleting restaurantes..."
Restaurante.delete_all
p 'Deleting users...'
User.delete_all

p 'Creating users...'

ale = User.new( email: 'ale@mail.com',
                password: '123123'
                )
ale.save!
p ale

antonio = User.new( email: 'antonio@mail.com',
                password: '123123'
              )
antonio.save!
p antonio

p 'Users created!'

p "Creating restaurantes..."

takumi= Restaurante.new(name:"Takumi")
takumi.user_id = ale.id
takumi.photo.attach(io: URI.open('https://res.cloudinary.com/dqstmox0s/image/upload/v1612256709/Restaurante%20website/Component_517_1_lpj9ag.svg'), filename: 'Component_517_1_lpj9ag.svg', content_type: 'svg')
takumi.save!
p takumi


p "Restaurantes created..."

p "Creating restaurante dashboard..."

    dashboard = Dashboard.new(restaurante_id: takumi.id)
    dashboard.save!
    p dashboard

p "Dashboard created!"

p "Creating menus..."

carta= Menu.new(name:"Carta",
                menu_type:"meal"
                )

carta.image.attach(io: URI.open('https://res.cloudinary.com/dqstmox0s/image/upload/v1612449911/vinicius-benedit--1GEAA8q3wk-unsplash_wvfffv.jpg'), filename: 'vinicius-benedit--1GEAA8q3wk-unsplash_wvfffv.jpg', content_type: 'jpg')
carta.save!
p carta

winery= Menu.new(name:"Bodega",
                menu_type:"drink"
                )

winery.image.attach(io: URI.open('https://res.cloudinary.com/dqstmox0s/image/upload/v1612449912/jim-harris-zDlusnb3G3Q-unsplash_uxli6c.jpg'), filename: 'jim-harris-zDlusnb3G3Q-unsplash_uxli6c.jpg', content_type: 'jpg')
winery.save!
p winery

drinks= Menu.new(name:"Bebidas",
                menu_type:"drink"
                )
drinks.image.attach(io: URI.open('https://res.cloudinary.com/dqstmox0s/image/upload/v1612449910/te-tonic-1_f6vl8c.jpg'), filename: 'te-tonic-1_f6vl8c.jpg', content_type: 'jpg')
drinks.save!
p drinks

p "Menus created..."

p "Creating set menus..."

executive_menu = SetMenu.new(name:"Menú del medio día",
                             price: "12.50"
                            )
executive_menu.image.attach(io: URI.open('https://res.cloudinary.com/dqstmox0s/image/upload/v1612449912/mahmoud-fawzy-MNbOMvT1cUU-unsplash_qzhjuw.jpg'), filename: 'mahmoud-fawzy-MNbOMvT1cUU-unsplash_qzhjuw.jpg', content_type: 'jpg')
executive_menu.save!
p executive_menu

p "Set menus created..."

p "Creating meals..."

pasta = Meal.new(name:"Pasta bolognesa",
                 description:"Pasta bolognesa casera, especialidad de la casa",
                 price: 4
                )

pasta.menu_id = carta.id
pasta.save!
p pasta

fish = Meal.new(name:"Salmon al horno",
                 description:"Salmon al horno, cocinado a baja temperatura y con salsa de finas hiervas",
                 price: 11.50
                )

fish.menu_id = carta.id
fish.save!
p fish

meat = Meal.new(name:"Solomillo de tenera",
                 description:"Cocinado a la parrilla, servido con patatas y vegetales asados",
                 price: 18.40
                )

meat.menu_id = carta.id
meat.save!
p meat

caneloni = Meal.new(name:"Canelones",
                 description:"Canelones de espinaca y ricota, servidos con salsa trufada y bechamel",
                 price: 9.40
                )

caneloni.menu_id = carta.id
caneloni.save!
p caneloni

flan = Meal.new(name:"Flan",
                 description:"Flan casero con crema y dulce de leche",
                 price: 5.40
                )

flan.menu_id = carta.id
flan.save!
p flan

p "Meals created"

p "Creating meal categories..."

tapas= MealCategory.new(name:"Tapas",
                        category_title: "tapas"
)
tapas.save!
p tapas

entrantes= MealCategory.new(name:"Entrantes",
                            category_title: "entrantes"
)
entrantes.save!
p entrantes

principales= MealCategory.new(name:"Principales",
                              category_title: "principales"
)
principales.save!
p principales

postres= MealCategory.new(name:"Postres",
                          category_title: "postres"
)
postres.save!
p postres


p "Meal categories created!"

p "Creating meal category tags..."

mc_tag_1 = MealCategoryTag.new(meal_id: pasta.id,
                               meal_category_id: tapas.id                            
)
mc_tag_1.save!
p mc_tag_1

mc_tag_2 = MealCategoryTag.new(meal_id: fish.id,
                               meal_category_id: tapas.id                            
)
mc_tag_2.save!
p mc_tag_2

mc_tag_3 = MealCategoryTag.new(meal_id: meat.id,
                               meal_category_id: principales.id                            
)
mc_tag_3.save!
p mc_tag_3

mc_tag_4 = MealCategoryTag.new(meal_id: caneloni.id,
                               meal_category_id: entrantes.id                            
)
mc_tag_4.save!
p mc_tag_4

mc_tag_5 = MealCategoryTag.new(meal_id: flan.id,
                               meal_category_id: postres.id                            
)
mc_tag_5.save!
p mc_tag_5

p "Meal category tags created!"

p "Creating allergens..."

shellfish_a = Allergen.new(
                         name: "shellfish",
)
shellfish_a.icon.attach(io: URI.open('https://res.cloudinary.com/dqstmox0s/image/upload/v1612818976/y4bkqhofj386u6r3o5y7efzc6r66.svg'), filename: 'y4bkqhofj386u6r3o5y7efzc6r66.svg', content_type: 'svg')
shellfish_a.save!
p shellfish_a

fish_a = Allergen.new(
                         name: "fish",
)
fish_a.icon.attach(io: URI.open('https://res.cloudinary.com/dqstmox0s/image/upload/v1612818980/gfs6g9gnw0wezxinh22401u3t213.svg'), filename: 'gfs6g9gnw0wezxinh22401u3t213.svg', content_type: 'svg')
fish_a.save!
p fish_a

p "Allergens created!"

p "Creating allergen tags..."

a_tag_1 = AllergenTag.new(
    meal_id: pasta.id,
    allergen_id: fish_a.id
)
a_tag_1.save!
p a_tag_1

a_tag_2 = AllergenTag.new(
    meal_id: fish.id,
    allergen_id: shellfish_a.id
)
a_tag_2.save!
p a_tag_2

a_tag_3 = AllergenTag.new(
    meal_id: fish.id,
    allergen_id: fish_a.id
)
a_tag_3.save!
p a_tag_3

a_tag_4 = AllergenTag.new(
    meal_id: meat.id,
    allergen_id: shellfish_a.id
)
a_tag_4.save!
p a_tag_4

a_tag_5 = AllergenTag.new(
    meal_id: meat.id,
    allergen_id: fish_a.id
)
a_tag_5.save!
p a_tag_5

a_tag_6 = AllergenTag.new(
    meal_id: caneloni.id,
    allergen_id: fish_a.id
)
a_tag_6.save!
p a_tag_6

p "Allergen tags created!"

p 'Creating filters...'

vegan= Filter.new(name:"Vegano",
                        filter_title: "vegan"
                        )
vegan.save!
p vegan

vegetarian= Filter.new(name:"Vegetariano",
                       filter_title: "vegetarian"
                      )
vegetarian.save!
p vegetarian

unlactosed= Filter.new(name:"Sin lactosa",
                       filter_title: "unlactosed"
                      )
unlactosed.save!
p unlactosed

gluten_free= Filter.new(name:"Sin gluten",
                        filter_title: "glutenfree"
                       )
gluten_free.save!
p gluten_free

p 'Filters created!'

p 'Creating filter tags...'

f_tag_1 = FilterTag.new(
    meal_id: pasta.id,
    filter_id: vegan.id
)
f_tag_1.save!
p f_tag_1

f_tag_2 = FilterTag.new(
    meal_id: fish.id,
    filter_id: unlactosed.id
)
f_tag_2.save!
p f_tag_2

f_tag_3 = FilterTag.new(
    meal_id: fish.id,
    filter_id: gluten_free.id
)
f_tag_3.save!
p a_tag_3

f_tag_4 = FilterTag.new(
    meal_id: meat.id,
    filter_id: gluten_free.id
)
f_tag_4.save!
p f_tag_4

f_tag_5 = FilterTag.new(
    meal_id: meat.id,
    filter_id: unlactosed.id
)
f_tag_5.save!
p f_tag_5

f_tag_6 = FilterTag.new(
    meal_id: caneloni.id,
    filter_id: vegetarian.id
)
f_tag_6.save!
p f_tag_6

p 'Filter tags created!'

p "Creating drinks..."

    rutini = Drink.new(name:"Rutini malbec",
                    description:"Malbec argentino, de acidez moderada y cuerpo completo",
                    price: 22.60
                    )

    rutini.menu_id = winery.id
    rutini.save!
    p rutini

    cava = Drink.new(name:"Cava",
                    description:"Cava catalan, fresco y de dulzor ligero",
                    price: 14.50
                    )

    cava.menu_id = winery.id
    cava.save!
    p cava

    durthe = Drink.new(name:"Durthe suavignon blanc",
                    description:"Refrescante suavignon blanc proveniente de Bordeaux",
                    price: 21.40
                    )

    durthe.menu_id = winery.id
    durthe.save!
    p durthe

    rose = Drink.new(name:"Rutini rose",
                    description:"Merlot rose argentino, perfecto para el aperitivo",
                    price: 19.40
                    )

    rose.menu_id = winery.id
    rose.save!
    p rose

p "Drinks created!"

p "Creating drink categories..."

red_wine= DrinkCategory.new(name:"Vino tinto",
                            category_title: "tinto"
                            )
red_wine.save!
p red_wine

white_wine= DrinkCategory.new(name:"Vino blanco",
                              category_title: "blanco"
                              )
white_wine.save!
p white_wine

rose_wine= DrinkCategory.new(name:"Vino rosado",
                             category_title: "rosado"
                             )
rose_wine.save!
p rose_wine

sparkling_wine= DrinkCategory.new(name:"Cava",
                                 category_title: "cava")
sparkling_wine.save!
p sparkling_wine

p "Drink categories created!"

p "Creating drink category tags..."

dc_tag_1 = DrinkCategoryTag.new(drink_id: rutini.id,
                                drink_category_id: red_wine.id                            
)
dc_tag_1.save!
p dc_tag_1

dc_tag_2 = DrinkCategoryTag.new(drink_id: durthe.id,
                                drink_category_id: white_wine.id                            
)
dc_tag_2.save!
p dc_tag_2

dc_tag_3 = DrinkCategoryTag.new(drink_id: rose.id,
                                drink_category_id: rose_wine.id                            
)
dc_tag_3.save!
p dc_tag_3

dc_tag_4 = DrinkCategoryTag.new(drink_id: cava.id,
                                drink_category_id: sparkling_wine.id                            
)
dc_tag_4.save!
p dc_tag_4

p "Drink category tags created!"

p "Seeds finished :D"

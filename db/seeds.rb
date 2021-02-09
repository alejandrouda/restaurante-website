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

miso = Meal.new(name:"Sopa de miso",
                 description:"Miso",
                 price: 3.40
                )

miso.menu_id = carta.id
miso.save!
p miso

edamame = Meal.new(name:"Edamame",
                 description:"edamame",
                 price: 5.80
                )

edamame.menu_id = carta.id
edamame.save!
p edamame

crab_salad = Meal.new(name:"Ensalada de cangrejo",
                 description:"",
                 price: 6.40
                )

crab_salad.menu_id = carta.id
crab_salad.save!
p crab_salad

wok_veg = Meal.new(name:"Wok de vegetales",
                 description:"",
                 price: 5.50
                )

wok_veg.menu_id = carta.id
wok_veg.save!
p wok_veg

setas = Meal.new(name:"Setas teriyaki",
                 description:"setas",
                 price: 4.60
                )

setas.menu_id = carta.id
setas.save!
p setas

nigiri_salmon = Meal.new(name:"Nigiri de salmón",
                 description:"Nigiri de salmón",
                 price: 4
                )

nigiri_salmon.menu_id = carta.id
nigiri_salmon.save!
p nigiri_salmon

nigiri_tuna = Meal.new(name:"Nigiri de atún",
                 description:"Nigiri de atún",
                 price: 6
                )

nigiri_tuna.menu_id = carta.id
nigiri_tuna.save!
p nigiri_tuna

nigiri_shrimp = Meal.new(name:"Nigiri de langostino",
                 description:"Cocinado a la parrilla, servido con patatas y vegetales asados",
                 price: 5.8
                )

nigiri_shrimp.menu_id = carta.id
nigiri_shrimp.save!
p nigiri_shrimp

nigiri_octopus = Meal.new(name:"Nigiri de pulpo",
                 description:"Canelones de espinaca y ricota, servidos con salsa trufada y bechamel",
                 price: 6.40
                )

nigiri_octopus.menu_id = carta.id
nigiri_octopus.save!
p nigiri_octopus

nigiri_unagi = Meal.new(name:"Nigiri Unagi",
                 description:"Nigiri unagi",
                 price: 5.20
                )

nigiri_unagi.menu_id = carta.id
nigiri_unagi.save!
p nigiri_unagi

nigiri_salmon_t = Meal.new(name:"Nigiri de salmón teriyaki",
                 description:"Nigiri de salmón teriyaki",
                 price: 5.60
                )

nigiri_salmon_t.menu_id = carta.id
nigiri_salmon_t.save!
p nigiri_salmon_t

nigiri_artichoke_t = Meal.new(name:"Nigiri de alcachofa teriyaki",
                 description:"Nigiri de alcachofa teriyaki",
                 price: 5.60
                )

nigiri_artichoke_t.menu_id = carta.id
nigiri_artichoke_t.save!
p nigiri_artichoke_t

sashimi_salmon = Meal.new(name:"Sashimi de salmón",
                 description:"Sashimi de salmón",
                 price: 5
                )

sashimi_salmon.menu_id = carta.id
sashimi_salmon.save!
p sashimi_salmon

sashimi_tuna = Meal.new(name:"Sashimi de atún",
                 description:"",
                 price: 6.20
                )

sashimi_tuna.menu_id = carta.id
sashimi_tuna.save!
p sashimi_tuna

sashimi_beetroot = Meal.new(name:"Sashimi de remolacha",
                 description:"",
                 price: 5.20
                )

sashimi_beetroot.menu_id = carta.id
sashimi_beetroot.save!
p sashimi_beetroot

maki_salmon = Meal.new(name:"Makis de salmón",
                 description:"",
                 price: 5.50
                )

maki_salmon.menu_id = carta.id
maki_salmon.save!
p maki_salmon

maki_cucumber = Meal.new(name:"Maki de pepino",
                 description:"",
                 price: 4.20
                )

maki_cucumber.menu_id = carta.id
maki_cucumber.save!
p maki_cucumber

maki_tuna = Meal.new(name:"Maki de atún",
                 description:"",
                 price: 6
                )

maki_tuna.menu_id = carta.id
maki_tuna.save!
p maki_tuna

maki_avocado = Meal.new(name:"Maki de aguacate con philadelphia",
                 description:"",
                 price: 5.40
                )

maki_avocado.menu_id = carta.id
maki_avocado.save!
p maki_avocado

maki_artichoke = Meal.new(name:"Maki artichoke teriyaki",
                 description:"",
                 price: 5.60
                )

maki_artichoke.menu_id = carta.id
maki_artichoke.save!
p maki_artichoke

california = Meal.new(name:"California roll",
                 description:"",
                 price: 6.60
                )

california.menu_id = carta.id
california.save!
p california

spicy_tuna = Meal.new(name:"Spicy tuna",
                 description:"",
                 price: 7.40
                )

spicy_tuna.menu_id = carta.id
spicy_tuna.save!
p spicy_tuna

crab_roll = Meal.new(name:"Crab roll",
                 description:"",
                 price: 8.40
                )

crab_roll.menu_id = carta.id
crab_roll.save!
p crab_roll

takumi_roll = Meal.new(name:"Takumi roll",
                 description:"",
                 price: 7.60
                )

takumi_roll.menu_id = carta.id
takumi_roll.save!
p takumi_roll

shrimp_tempura = Meal.new(name:"Langostino tempura",
                 description:"",
                 price: 7.40
                )

shrimp_tempura.menu_id = carta.id
shrimp_tempura.save!
p shrimp_tempura

california_tempura = Meal.new(name:"California tempura",
                 description:"",
                 price: 7.50
                )

california_tempura.menu_id = carta.id
california_tempura.save!
p california_tempura

crab_tempura = Meal.new(name:"Crab tempura",
                 description:"",
                 price: 8.60
                )

crab_tempura.menu_id = carta.id
crab_tempura.save!
p crab_tempura

artichoke_tempura = Meal.new(name:"Alcachofa tempura",
                 description:"",
                 price: 5.50
                )

artichoke_tempura.menu_id = carta.id
artichoke_tempura.save!
p artichoke_tempura

takumi_tempura = Meal.new(name:"Takumi roll tempura",
                 description:"",
                 price: 7.40
                )

takumi_tempura.menu_id = carta.id
takumi_tempura.save!
p takumi_tempura

green_tea_icecream = Meal.new(name:"Helado de té verde",
                 description:"",
                 price: 5.50
                )

green_tea_icecream.menu_id = carta.id
green_tea_icecream.save!
p green_tea_icecream

truffle = Meal.new(name:"Trufas de sake",
                 description:"",
                 price: 6.40
                )

truffle.menu_id = carta.id
truffle.save!
p truffle

lichee = Meal.new(name:"Lichee",
                 description:"",
                 price: 6.60
                )

lichee.menu_id = carta.id
lichee.save!
p lichee

tempura_icecream = Meal.new(name:"Helado en tempura",
                 description:"",
                 price: 5.40
                )

tempura_icecream.menu_id = carta.id
tempura_icecream.save!
p tempura_icecream

chocolate_roll = Meal.new(name:"Roll de chocolate",
                 description:"Roll",
                 price: 5.50
                )

chocolate_roll.menu_id = carta.id
chocolate_roll.save!
p chocolate_roll

p "Meals created"

p "Creating meal categories..."

starter= MealCategory.new(name:"Entrantes",
                        category_title: "starters"
)
starter.save!
p starter

nigiri= MealCategory.new(name:"Nigiris",
                            category_title: "nigiri"
)
nigiri.save!
p nigiri

sashimi= MealCategory.new(name:"Sashimi",
                              category_title: "sashimi"
)
sashimi.save!
p sashimi

maki= MealCategory.new(name:"Maki",
                          category_title: "maki"
)
maki.save!
p maki

special= MealCategory.new(name:"Especiales",
                          category_title: "special"
)
special.save!
p special

tempura= MealCategory.new(name:"Tempura",
                          category_title: "tempura"
)
tempura.save!
p tempura

dessert= MealCategory.new(name:"Postres",
                          category_title: "dessert"
)
dessert.save!
p dessert


p "Meal categories created!"

p "Creating meal category tags..."

mc_tag_1 = MealCategoryTag.new(meal_id: miso.id,
                               meal_category_id: starter.id                            
)
mc_tag_1.save!
p mc_tag_1

mc_tag_2 = MealCategoryTag.new(meal_id: wok_veg.id,
                               meal_category_id: starter.id                            
)
mc_tag_2.save!
p mc_tag_2

mc_tag_3 = MealCategoryTag.new(meal_id: edamame.id,
                               meal_category_id: starter.id                            
)
mc_tag_3.save!
p mc_tag_3

mc_tag_4 = MealCategoryTag.new(meal_id: crab_salad.id,
                               meal_category_id: starter.id                            
)
mc_tag_4.save!
p mc_tag_4

mc_tag_5 = MealCategoryTag.new(meal_id: setas.id,
                               meal_category_id: starter.id                            
)
mc_tag_5.save!
p mc_tag_5


mc_tag_6 = MealCategoryTag.new(meal_id: nigiri_tuna.id,
                               meal_category_id: nigiri.id                            
)
mc_tag_6.save!
p mc_tag_6

mc_tag_7 = MealCategoryTag.new(meal_id: nigiri_shrimp.id,
                               meal_category_id: nigiri.id                            
)
mc_tag_7.save!
p mc_tag_7

mc_tag_8 = MealCategoryTag.new(meal_id: nigiri_octopus.id,
                               meal_category_id: nigiri.id                            
)
mc_tag_8.save!
p mc_tag_8

mc_tag_9 = MealCategoryTag.new(meal_id: nigiri_unagi.id,
                               meal_category_id: nigiri.id                            
)
mc_tag_9.save!
p mc_tag_9

mc_tag_10 = MealCategoryTag.new(meal_id: nigiri_salmon_t.id,
                               meal_category_id: nigiri.id                            
)
mc_tag_10.save!
p mc_tag_10

mc_tag_11 = MealCategoryTag.new(meal_id: nigiri_salmon.id,
                               meal_category_id: nigiri.id                            
)
mc_tag_11.save!
p mc_tag_11

mc_tag_12 = MealCategoryTag.new(meal_id: nigiri_artichoke_t.id,
                               meal_category_id: nigiri.id                            
)
mc_tag_12.save!
p mc_tag_12

mc_tag_13 = MealCategoryTag.new(meal_id: sashimi_salmon.id,
                               meal_category_id: sashimi.id                            
)
mc_tag_13.save!
p mc_tag_13

mc_tag_14 = MealCategoryTag.new(meal_id: sashimi_tuna.id,
                               meal_category_id: sashimi.id                            
)
mc_tag_14.save!
p mc_tag_14

mc_tag_15 = MealCategoryTag.new(meal_id: sashimi_beetroot.id,
                               meal_category_id: sashimi.id                            
)
mc_tag_15.save!
p mc_tag_15

mc_tag_16 = MealCategoryTag.new(meal_id: maki_salmon.id,
                               meal_category_id: maki.id                            
)
mc_tag_16.save!
p mc_tag_16

mc_tag_17 = MealCategoryTag.new(meal_id: maki_cucumber.id,
                               meal_category_id: maki.id                            
)
mc_tag_17.save!
p mc_tag_17

mc_tag_18 = MealCategoryTag.new(meal_id: maki_tuna.id,
                               meal_category_id: maki.id                            
)
mc_tag_18.save!
p mc_tag_18

mc_tag_19 = MealCategoryTag.new(meal_id: maki_avocado.id,
                               meal_category_id: maki.id                            
)
mc_tag_19.save!
p mc_tag_19

mc_tag_20 = MealCategoryTag.new(meal_id: maki_artichoke.id,
                               meal_category_id: maki.id                            
)
mc_tag_20.save!
p mc_tag_20

mc_tag_21 = MealCategoryTag.new(meal_id: california.id,
                               meal_category_id: special.id                            
)
mc_tag_21.save!
p mc_tag_21

mc_tag_22 = MealCategoryTag.new(meal_id: spicy_tuna.id,
                               meal_category_id: special.id                            
)
mc_tag_22.save!
p mc_tag_22

mc_tag_23 = MealCategoryTag.new(meal_id: crab_roll.id,
                               meal_category_id: special.id                            
)
mc_tag_23.save!
p mc_tag_23

mc_tag_24 = MealCategoryTag.new(meal_id: takumi_roll.id,
                               meal_category_id: special.id                            
)
mc_tag_24.save!
p mc_tag_24

mc_tag_25 = MealCategoryTag.new(meal_id: shrimp_tempura.id,
                               meal_category_id: tempura.id                            
)
mc_tag_25.save!
p mc_tag_25

mc_tag_26 = MealCategoryTag.new(meal_id: california_tempura.id,
                               meal_category_id: tempura.id                            
)
mc_tag_26.save!
p mc_tag_26

mc_tag_27 = MealCategoryTag.new(meal_id: crab_tempura.id,
                               meal_category_id: tempura.id                            
)
mc_tag_27.save!
p mc_tag_27

mc_tag_28 = MealCategoryTag.new(meal_id: artichoke_tempura.id,
                               meal_category_id: tempura.id                            
)
mc_tag_28.save!
p mc_tag_28

mc_tag_29 = MealCategoryTag.new(meal_id: takumi_tempura.id,
                               meal_category_id: tempura.id                            
)
mc_tag_29.save!
p mc_tag_29

mc_tag_31 = MealCategoryTag.new(meal_id: green_tea_icecream.id,
                               meal_category_id: dessert.id                            
)
mc_tag_31.save!
p mc_tag_31

mc_tag_32 = MealCategoryTag.new(meal_id: truffle.id,
                               meal_category_id: dessert.id                            
)
mc_tag_32.save!
p mc_tag_32

mc_tag_33 = MealCategoryTag.new(meal_id: lichee.id,
                               meal_category_id: dessert.id                            
)
mc_tag_33.save!
p mc_tag_33

mc_tag_34 = MealCategoryTag.new(meal_id: tempura_icecream.id,
                               meal_category_id: dessert.id                            
)
mc_tag_34.save!
p mc_tag_34

mc_tag_35 = MealCategoryTag.new(meal_id: chocolate_roll.id,
                               meal_category_id: dessert.id                            
)
mc_tag_35.save!
p mc_tag_35

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

egg_a = Allergen.new(
                         name: "egg",
)
egg_a.icon.attach(io: URI.open('https://res.cloudinary.com/dqstmox0s/image/upload/v1612867025/Component_214_1_rmzjac.svg'), filename: 'Component_214_1_rmzjac.svg', content_type: 'svg')
egg_a.save!
p egg_a

crustaceans_a = Allergen.new(
                         name: "crustaceans",
)
crustaceans_a.icon.attach(io: URI.open('https://res.cloudinary.com/dqstmox0s/image/upload/v1612866820/Component_216_1_bwqffi.svg'), filename: 'Component_216_1_bwqffi.svg', content_type: 'svg')
crustaceans_a.save!
p crustaceans_a

wheat_a = Allergen.new(
                         name: "wheat",
)
wheat_a.icon.attach(io: URI.open('https://res.cloudinary.com/dqstmox0s/image/upload/v1612866820/Component_215_1_ponvbd.svg'), filename: 'Component_215_1_ponvbd.svg', content_type: 'svg')
wheat_a.save!
p wheat_a

p "Allergens created!"

p "Creating allergen tags..."

a_tag_1 = AllergenTag.new(
    meal_id: nigiri_salmon.id,
    allergen_id: fish_a.id
)
a_tag_1.save!
p a_tag_1

a_tag_2 = AllergenTag.new(
    meal_id: crab_roll.id,
    allergen_id: shellfish_a.id
)
a_tag_2.save!
p a_tag_2

a_tag_3 = AllergenTag.new(
    meal_id: nigiri_tuna.id,
    allergen_id: fish_a.id
)
a_tag_3.save!
p a_tag_3

a_tag_4 = AllergenTag.new(
    meal_id: shrimp_tempura.id,
    allergen_id: shellfish_a.id
)
a_tag_4.save!
p a_tag_4

a_tag_5 = AllergenTag.new(
    meal_id: takumi_roll.id,
    allergen_id: fish_a.id
)
a_tag_5.save!
p a_tag_5

a_tag_6 = AllergenTag.new(
    meal_id: maki_tuna.id,
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
    meal_id: sashimi_beetroot.id,
    filter_id: vegan.id
)
f_tag_1.save!
p f_tag_1

f_tag_2 = FilterTag.new(
    meal_id: maki_cucumber.id,
    filter_id: unlactosed.id
)
f_tag_2.save!
p f_tag_2

f_tag_3 = FilterTag.new(
    meal_id: maki_avocado.id,
    filter_id: gluten_free.id
)
f_tag_3.save!
p a_tag_3

f_tag_4 = FilterTag.new(
    meal_id: sashimi_salmon.id,
    filter_id: gluten_free.id
)
f_tag_4.save!
p f_tag_4

f_tag_5 = FilterTag.new(
    meal_id: sashimi_tuna.id,
    filter_id: unlactosed.id
)
f_tag_5.save!
p f_tag_5

f_tag_6 = FilterTag.new(
    meal_id: maki_avocado.id,
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

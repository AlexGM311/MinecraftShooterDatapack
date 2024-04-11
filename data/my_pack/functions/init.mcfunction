scoreboard players set counter timer 4
scoreboard players set started RoundTime 1
bossbar set minecraft:roundtime visible true
schedule function my_pack:ship_features/move_ship 3s
scoreboard players set traversed Plane 0
scoreboard players operation target Plane = width border
scoreboard players operation target Plane /= 3 intgers
scoreboard players operation target Plane *= 2 intgers
gamemode survival @a[scores={RegPlayers=1}]
gamemode spectator @a[scores={RegPlayers=2}]
execute as @a[scores={RegPlayers=1}] run clear @s
execute as @a[scores={RegPlayers=1}] run effect clear @s
execute as @a[scores={RegPlayers=1}] run replaceitem entity @s weapon.offhand minecraft:paper{Tags:["glider"],AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:-5,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-124311,28564,211159,-57128]}],display:{Name:'[{"text":"Парашют","italic":false}]',Lore:['[{"text":"Медленно спускайтесь ","italic":false},{"text":"[Должно лежать в левой руке]","italic":true,"color":"yellow"}]']},Enchantments:[{}]} 1
execute as @a[scores={RegPlayers=1}] run replaceitem entity @s armor.chest minecraft:elytra{Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:8,Slot:chest,Name:"generic.armor",UUID:[I;-124311,5379,21491,-10758]},{AttributeName:"generic.armor_toughness",Amount:1.5,Slot:chest,Name:"generic.armor_toughness",UUID:[I;-124311,5479,21491,-10958]},{AttributeName:"generic.knockback_resistance",Amount:0.1,Slot:chest,Name:"generic.knockback_resistance",UUID:[I;-124311,5579,21491,-11158]}],display:{Name:'[{"text":"Бронированный Глайдер","italic":false,"color":"aqua"}]',Lore:['[{"text":"Позволяет летать на некоторые","italic":false}]','[{"text":"расстояния,а также даёт","italic":false}]','[{"text":"защиту от пуль.","italic":false}]']},Enchantments:[{}]} 1
execute as @a[scores={RegPlayers=1}] run replaceitem entity @s armor.head pretaccraft:tactical_armor_helmet{Tags:["night_vision"],display:{Name:'[{"text":"Шлем с ночным видением","italic":false}]'}}
execute as @a[scores={RegPlayers=1}] run replaceitem entity @s armor.legs pretaccraft:tactical_armor_leggings{display:{Name:'[{"text":"Поножи","italic":false}]'}}
execute as @a[scores={RegPlayers=1}] run replaceitem entity @s armor.feet pretaccraft:tactical_armor_boots{display:{Name:'[{"text":"Ботинки","italic":false}]'}}
execute as @a[scores={RegPlayers=1}] run give @s stabxmodernguns:ak47{AmmoCount:30} 1
execute as @a[scores={RegPlayers=1}] run give @s additionalguns:awm{AmmoCount:5} 1 
execute as @a[scores={RegPlayers=1}] run give @s additionalguns:awm{AmmoCount:5} 1
execute as @a[scores={RegPlayers=1}] run give @s stabxmodernguns:colt_m1911a1{AmmoCount:17} 1
execute as @a[scores={RegPlayers=1}] run give @s vehicle:vehicle_crate{BlockEntityTag:{Vehicle:"vehicle:mini_bike",WheelType:0,EngineTier:0}} 1
execute as @a[scores={RegPlayers=1}] run give @s vehicle:jerry_can{Fuel:5000} 1
execute as @a[scores={RegPlayers=1}] run give @s vehicle:wrench 1
execute as @a[scores={RegPlayers=1}] run give @s cgm:grenade 8
execute as @a[scores={RegPlayers=1}] run give @s minecraft:splash_potion{Tags:["medkit"],CustomPotionColor:2679429,display:{Name:'[{"text":"Аптечка","italic":false}]'}}
execute as @a[scores={RegPlayers=1}] run give @s minecraft:birch_planks{Tags:["infinite_block"],display:{Name:'[{"text":"Бесконечный блок","italic":false}]'}} 2
execute as @a[scores={RegPlayers=1}] run give @s stabxmodernguns:7.62mm 128
execute as @a[scores={RegPlayers=1}] run give @s additionalguns:bullet_long 16
execute as @a[scores={RegPlayers=1}] run give @s stabxmodernguns:45acp 64
execute as @a[scores={RegPlayers=1}] run give @s minecraft:netherite_pickaxe{Unbreakable:1,Damage:0,HideFlags:6,AttributeModifiers:[{Slot:"mainhand",AttributeName:"generic.attack_damage",Amount:-5,Name:"generic.attack_damage"}]} 1
execute as @a[scores={RegPlayers=1}] run give @s minecraft:netherite_shovel{Unbreakable:1,Damage:0,HideFlags:6,AttributeModifiers:[{Slot:"mainhand",AttributeName:"generic.attack_damage",Amount:-5,Name:"generic.attack_damage"}]} 1
execute as @a[scores={RegPlayers=1}] run give @s minecraft:netherite_pickaxe{Unbreakable:1,Damage:0,HideFlags:6,AttributeModifiers:[{Slot:"mainhand",AttributeName:"generic.attack_damage",Amount:-5,Name:"generic.attack_damage"}]} 1
execute as @a[scores={RegPlayers=1}] run give @s cgm:stun_grenade 4
execute as @a[scores={RegPlayers=1}] run give @s minecraft:enchanted_book{Tags: ["soundradar"], display: {Lore: ['[{"text":"Используется лишь раз - все оставшиеся в живых игрки издают короткий звук, который слышите только вы. ","italic":false},{"text":"[Выкинуть, чтобы использовать]","italic":true,"color":"yellow"}]'], Name: '[{"text":"Звуковой радар","italic":false}]'}}
execute as @a[scores={RegPlayers=1}] run give @s minecraft:blaze_rod{Tags: ["speedboost"], display: {Lore: ['[{"text":"Используется лишь раз - даёт скорость, но потом наносит урон. ","italic":false},{"text":"[Выкинуть, чтобы использовать]","italic":true,"color":"yellow"}]'], Name: '[{"text":"Ускорение","italic":false,"color":"aqua"}]'}} 2
team join Players @a[scores={RegPlayers=1}]


function my_pack:global_repeat
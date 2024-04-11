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
execute as @a[scores={RegPlayers=1}] run replaceitem entity @s weapon.offhand paper{Tags:["glider"],AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:-5,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-124311,28564,211159,-57128]}],display:{Name:'[{"text":"Парашют","italic":false}]',Lore:['[{"text":"Медленно спускайтесь ","italic":false},{"text":"[Должно лежать в левой руке]","italic":true,"color":"yellow"}]']},Enchantments:[{}]} 1
execute as @a[scores={RegPlayers=1}] run replaceitem entity @s armor.chest elytra{AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:-5,Slot:chest,Name:"generic.attack_damage",UUID:[I;-124310,33539,223340,-67078]}],display:{Name:'[{"text":"Глайдер","italic":false,"color":"aqua"}]',Lore:['[{"text":"Медленно спускайтесь","italic":false}]']},Enchantments:[{}]} 1
execute as @a[scores={RegPlayers=1}] run give @s minecraft:barrel{display:{Name:'[{"text":"Снаряжение","italic":false}]'}, BlockEntityTag:{Items: [{Slot: 0b, id: "pretaccraft:tactical_armor_helmet", Count: 1b, tag: {Damage: 0}}, {Slot: 1b, id: "pretaccraft:tactical_armor_chestplate", Count: 1b, tag: {Damage: 0}}, {Slot: 2b, id: "pretaccraft:tactical_armor_leggings", Count: 1b, tag: {Damage: 0}}, {Slot: 3b, id: "pretaccraft:tactical_armor_boots", Count: 1b, tag: {Damage: 0}}, {Slot: 4b, id: "minecraft:ladder", Count: 64b}, {Slot: 5b, id: "minecraft:netherite_axe", Count: 1b, tag: {Unbreakable: 1, Damage: 0, HideFlags: 6, AttributeModifiers: [{Slot: "mainhand", AttributeName: "generic.attack_damage", UUID: [I; -124310, 20714, 174327, -41428], Amount: -5, Name: "generic.attack_damage"}]}}, {Slot: 6b, id: "minecraft:netherite_pickaxe", Count: 1b, tag: {Unbreakable: 1, Damage: 0, HideFlags: 6, AttributeModifiers: [{Slot: "mainhand", AttributeName: "generic.attack_damage", UUID: [I; -124310, 21014, 174327, -42028], Amount: -5, Name: "generic.attack_damage"}]}}, {Slot: 7b, id: "minecraft:netherite_shovel", Count: 1b, tag: {Unbreakable: 1, Damage: 0, HideFlags: 6, AttributeModifiers: [{Slot: "mainhand", AttributeName: "generic.attack_damage", UUID: [I; -124310, 21314, 174327, -42628], Amount: -5, Name: "generic.attack_damage"}]}}, {Slot: 8b, id: "minecraft:water_bucket", Count: 1b}, {Slot: 9b, id: "additionalguns:awm", Count: 1b, tag: {AmmoCount: 5, Attachments: {Scope: {id: "cgm:long_scope", Count: 1b}}}}, {Slot: 10b, id: "stabxmodernguns:ak47", Count: 1b, tag: {AmmoCount: 30}}, {Slot: 11b, id: "stabxmodernguns:mp5_classic", Count: 1b, tag: {AmmoCount: 30}}, {Slot: 12b, id: "projectarsenal:mossou", Count: 1b, tag: {Gun: {General: {Auto: 0b}}, AmmoCount: 2, FireMode: 0}}, {Slot: 13b, id: "stabxmodernguns:colt_m1911a1", Count: 1b, tag: {AmmoCount: 17}}, {Slot: 14b, id: "minecraft:splash_potion", Count: 1b, tag: {Potion: "minecraft:healing"}}, {Slot: 15b, id: "minecraft:splash_potion", Count: 1b, tag: {Potion: "minecraft:healing"}}, {Slot: 16b, id: "minecraft:leather_helmet", Count: 1b, tag: {Unbreakable: 1, Damage: 0, HideFlags: 64, Tags: ["night_vision"], display: {Lore: ['[{"text":"Дают эффект ночного зрения при надевании","italic":false}]'], color: 6192150, Name: '[{"text":"Очки ночного зрения","italic":false}]'}}}, {Slot: 18b, id: "minecraft:birch_planks", Count: 64b}, {Slot: 19b, id: "minecraft:birch_planks", Count: 64b}, {Slot: 20b, id: "vehicle:wrench", Count: 1b}, {Slot: 21b, id: "vehicle:jerry_can", Count: 1b, tag: {Fuel: 5000}}, {Slot: 22b, id: "vehicle:vehicle_crate", Count: 1b, tag: {BlockEntityTag: {Vehicle: "vehicle:mini_bike", WheelType: 0, EngineTier: 0}}}, {Slot: 23b, id: "minecraft:splash_potion", Count: 1b, tag: {Potion: "minecraft:healing"}}, {Slot: 24b, id: "minecraft:splash_potion", Count: 1b, tag: {Potion: "minecraft:healing"}}, {Slot: 25b, id: "minecraft:blaze_rod", Count: 2b, tag: {Tags: ["speedboost"], display: {Lore: ['[{"text":"Используется лишь раз - даёт скорость, но потом наносит урон. ","italic":false},{"text":"[Выкинуть, чтобы использовать]","italic":true,"color":"yellow"}]'], Name: '[{"text":"Ускорение","italic":false,"color":"aqua"}]'}, Enchantments: [{}]}}, {Slot: 26b, id: "minecraft:enchanted_book", Count: 1b, tag: {Tags: ["soundradar"], display: {Lore: ['[{"text":"Используется лишь раз - все оставшиеся в живых игрки издают короткий звук, который слышите только вы. ","italic":false},{"text":"[Выкинуть, чтобы использовать]","italic":true,"color":"yellow"}]'], Name: '[{"text":"Звуковой радар","italic":false}]'}, Enchantments: [{}]}}]}}
execute as @a[scores={RegPlayers=1}] run give @s minecraft:barrel{display:{Name:'[{"text":"Патроны","italic":false}]'},BlockEntityTag:{Items: [{Slot: 0b, id: "stabxmodernguns:7.62mm", Count: 64b}, {Slot: 1b, id: "stabxmodernguns:7.62mm", Count: 64b}, {Slot: 2b, id: "stabxmodernguns:7.62mm", Count: 64b}, {Slot: 3b, id: "stabxmodernguns:9mm", Count: 64b}, {Slot: 4b, id: "stabxmodernguns:9mm", Count: 64b}, {Slot: 5b, id: "stabxmodernguns:9mm", Count: 64b}, {Slot: 6b, id: "cgm:shell", Count: 64b}, {Slot: 7b, id: "stabxmodernguns:45acp", Count: 64b}, {Slot: 8b, id: "additionalguns:bullet_long", Count: 16b}, {Slot: 9b, id: "stabxmodernguns:7.62mm", Count: 64b}, {Slot: 10b, id: "stabxmodernguns:7.62mm", Count: 64b}, {Slot: 11b, id: "stabxmodernguns:7.62mm", Count: 64b}, {Slot: 12b, id: "stabxmodernguns:9mm", Count: 64b}, {Slot: 13b, id: "stabxmodernguns:9mm", Count: 64b}, {Slot: 14b, id: "stabxmodernguns:9mm", Count: 64b}, {Slot: 15b, id: "cgm:shell", Count: 64b}, {Slot: 16b, id: "stabxmodernguns:45acp", Count: 64b}, {Slot: 17b, id: "cgm:stun_grenade", Count: 16b}, {Slot: 18b, id: "stabxmodernguns:7.62mm", Count: 64b}, {Slot: 19b, id: "stabxmodernguns:7.62mm", Count: 64b}, {Slot: 20b, id: "stabxmodernguns:7.62mm", Count: 64b}, {Slot: 21b, id: "stabxmodernguns:9mm", Count: 64b}, {Slot: 22b, id: "stabxmodernguns:9mm", Count: 64b}, {Slot: 23b, id: "stabxmodernguns:9mm", Count: 64b}, {Slot: 24b, id: "cgm:shell", Count: 64b}, {Slot: 25b, id: "stabxmodernguns:45acp", Count: 64b}, {Slot: 26b, id: "cgm:grenade", Count: 16b}]}}
team join Players @a[scores={RegPlayers=1}]

function my_pack:global_repeat  
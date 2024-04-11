execute if score started RoundTime = 0 intgers if score exists Plane > 0 intgers as @a if score @s RegPlayers = 1 intgers at @e[tag=plane_anchor] if entity @s positioned ~ ~ ~ run tp @s ~ ~ ~
execute if score started RoundTime = 0 intgers run scoreboard players set submitted RegPlayers 0
execute if score started RoundTime = 0 intgers as @a if score @s RegPlayers >= 1 intgers run scoreboard players add submitted RegPlayers 1
execute if score started RoundTime = 0 intgers if score submitted RegPlayers >= totalplayers RegPlayers if score exists Plane > 0 intgers run function my_pack:init

execute as @a[gamemode=survival] store result score @s PlayerX run data get entity @s Pos[0]
execute as @a[gamemode=survival] store result score @s PlayerY run data get entity @s Pos[1]
execute as @a[gamemode=survival] store result score @s PlayerZ run data get entity @s Pos[2]

execute as @a[gamemode=survival] if predicate my_pack:night_vision run effect give @s night_vision 1640 1 true
execute as @a[gamemode=survival] unless predicate my_pack:night_vision run effect clear @s night_vision

execute as @a[gamemode=survival] if predicate my_pack:glider run effect give @s slow_falling 1640 2 true
execute as @a[gamemode=survival] at @s if predicate my_pack:glider if block ~ ~-0.1 ~ air run particle minecraft:dust 1 1 1 1 ~ ~2 ~ 0.25 0 0.25 0 50 force
execute as @a[gamemode=survival] unless predicate my_pack:glider run effect clear @s slow_falling

execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",tag:{Tags:['speedboost']}}}] as @p run effect give @s minecraft:speed 5 2 true
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",tag:{Tags:['speedboost']}}}] as @p run effect give @s minecraft:wither 20 1 true
kill @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",tag:{Tags:['speedboost']}}}]

execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",tag:{Tags:['soundradar']}}}] run tag @p add radar
kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",tag:{Tags:['soundradar']}}}]
execute at @a[tag=!radar] run playsound entity.generic.explode master @a[tag=radar] ~ ~ ~ 1000 1.1 1.0
tag @a[tag=radar] remove radar

execute as @a[scores={HP=5..14}] unless predicate my_pack:regenerating run effect give @s minecraft:regeneration 2 1 true
execute as @a[scores={HP=0..5}] unless predicate my_pack:regenerating run effect give @s minecraft:regeneration 2 2 true
execute as @a[scores={HP=15..20}] run effect clear @s regeneration
execute as @a[scores={HP=0..5}] run effect give @s minecraft:nausea 5 1 true
execute as @a[scores={HP=0..5}] run effect give @s minecraft:speed 7 2 true

execute as @a[gamemode=!creative] if predicate my_pack:infinite_block run replaceitem entity @s weapon.mainhand minecraft:birch_planks{Tags:["infinite_block"],display:{Name:'[{"text":"Бесконечный блок","italic":false}]'}} 2

execute as @e[type=potion] as @s if predicate my_pack:healing_potion run effect give @p instant_health 1 1 true
execute as @e[type=potion] as @s if predicate my_pack:healing_potion run scoreboard players set @p regentimer 600
execute as @e[type=potion] if predicate my_pack:healing_potion run kill @s

execute as @a[scores={regentimer=0..601}] run scoreboard players remove @s regentimer 1
execute as @a[scores={regentimer=0}] run give @s minecraft:splash_potion{Tags:["medkit"],CustomPotionColor:2679429,display:{Name:'[{"text":"Аптечка","italic":false}]'}}
execute at @s run summon armor_stand ~ ~ ~ {ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["plane_anchor"]}
execute at @s run setblock ~ ~-2 ~ repeating_command_block[conditional=false]{Command:"tp @e[tag=plane_anchor] ~ ~1.5 ~",auto:true} replace
execute as @e[tag=plane_anchor] run execute at @s run fill ~-1 ~-1 ~-1 ~5 ~-1 ~1 minecraft:quartz_block replace
execute as @e[tag=plane_anchor] run execute at @s run fill ~1 ~-1 ~-2 ~4 ~-1 ~2 minecraft:quartz_block replace
execute as @e[tag=plane_anchor] run execute at @s run fill ~2 ~-1 ~-5 ~2 ~-1 ~5 minecraft:quartz_block replace
execute as @e[tag=plane_anchor] run execute at @s run fill ~3 ~-1 ~-4 ~3 ~-1 ~4 minecraft:quartz_block replace
execute as @e[tag=plane_anchor] run execute at @s run fill ~4 ~-1 ~-3 ~4 ~-1 ~3 minecraft:quartz_block replace
execute as @e[tag=plane_anchor] run execute at @s run setblock ~-2 ~ ~ minecraft:quartz_block replace

scoreboard players set exists Plane 1
execute as @e[tag=plane_anchor] at @s store result score height Plane run data get entity @s Pos[1]
scoreboard players remove height Plane 5
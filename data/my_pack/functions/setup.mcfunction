# Setting up gamerules
gamerule sendCommandFeedback false
gamerule keepInventory true
gamerule showDeathMessages false
gamerule naturalRegeneration false

# Setting up scoreboard values that are commonly used in calculations.
scoreboard players set -1 intgers -1
scoreboard players set 0 intgers 0
scoreboard players set 1 intgers 1
scoreboard players set 2 intgers 2
scoreboard players set 3 intgers 3
scoreboard players set 10 intgers 10

# Setting up timer for use
scoreboard players set counter timer 0

# Setting up killcount for use
scoreboard objectives setdisplay sidebar kills
scoreboard players set @a kills 0

# Setting up death count for use
scoreboard players set @a Deaths 0

# Setting up hp tracking
effect give @a instant_damage 1 1 true
effect give @a instant_health 1 5 true

# Bossbar round progress setup
bossbar set minecraft:roundtime color yellow
bossbar set minecraft:roundtime players @a
bossbar set minecraft:roundtime style notched_6
bossbar set minecraft:roundtime visible false
execute store result bossbar minecraft:roundtime max run scoreboard players get timer RoundTime
execute store result bossbar minecraft:roundtime value run scoreboard players get timer RoundTime

# RoundTime setup
scoreboard players operation third RoundTime = timer RoundTime
scoreboard players operation third RoundTime /= 3 intgers
scoreboard players operation twothirds RoundTime = third RoundTime
scoreboard players operation twothirds RoundTime *= 2 intgers
scoreboard players operation halftime RoundTime = timer RoundTime
scoreboard players operation halftime RoundTime /= 2 intgers
scoreboard players set started RoundTime 0

# Border setup
execute store result score width border run worldborder get
scoreboard players operation target border = width border
scoreboard players operation target border /= 3 intgers
scoreboard players operation increment border = width border
scoreboard players operation increment border -= target border
scoreboard players operation increment border /= 2 intgers
scoreboard players operation counter border = increment border

# Player tracking system
scoreboard players enable @a RegPlayers
scoreboard players set totalplayers RegPlayers 0
scoreboard players set submitted RegPlayers 0
scoreboard players set alive RegPlayers 0
execute as @a run scoreboard players add totalplayers RegPlayers 1
tellraw @a ["",{"text":"\u0412\u044b \u0431\u0443\u0434\u0435\u0442\u0435 \u0443\u0447\u0430\u0441\u0442\u0432\u043e\u0432\u0430\u0442\u044c? "},{"text":"[\u0414\u0430]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger RegPlayers set 1"}},{"text":" "},{"text":"[\u041d\u0435\u0442]","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger RegPlayers set 2"}}]

title @a times 0 2147483647 0
title @a title {"text":"\u041e\u0436\u0438\u0434\u0430\u043d\u0438\u0435 \u0432\u044b\u0431\u043e\u0440\u0430 \u0438\u0433\u0440\u043e\u043a\u043e\u0432...","bold":true,"color":"dark_red"}


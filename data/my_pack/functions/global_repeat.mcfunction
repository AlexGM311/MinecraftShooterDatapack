# Repeats this function once a second
execute if score timer RoundTime > 0 intgers run schedule function my_pack:global_repeat 1s replace
execute if score timer RoundTime <= 0 intgers run function my_pack:game_end

# The first countdown
execute if score counter timer > 0 intgers run execute as @a run title @s times 5 10 5
execute if score counter timer > 1 intgers run execute as @a run execute at @s run playsound minecraft:block.anvil.land ambient @s ~ ~ ~
execute if score counter timer = 1 intgers run execute as @a run execute at @s run playsound minecraft:item.totem.use ambient @s ~ ~ ~
execute if score counter timer = 1 intgers run title @a title {"text":"GO!", "color": "red"}
execute if score counter timer = 4 intgers run title @a title {"text":"3...", "color": "blue"}
execute if score counter timer = 3 intgers run title @a title {"text":"2...", "color": "green"}
execute if score counter timer = 2 intgers run title @a title {"text":"1...", "color": "yellow"}

# Counting alive players
scoreboard players set alive RegPlayers 0
execute as @a if score @s RegPlayers = 1 intgers run scoreboard players add alive RegPlayers 1
execute if score alive RegPlayers = 1 intgers run scoreboard players set timer RoundTime 1

# Timer management
execute if score counter timer >= 0 intgers run scoreboard players remove counter timer 1
execute if score counter timer < 0 intgers run scoreboard players remove timer RoundTime 1
execute store result bossbar minecraft:roundtime value run scoreboard players get timer RoundTime

# Turning people that died multiple times into spectators
execute as @a run execute if score @s Deaths >= 1 intgers run gamemode spectator @s
execute as @a run execute if score @s Deaths >= 1 intgers run scoreboard players set @s RegPlayers 2
execute as @a run execute if score @s Deaths >= 1 intgers run scoreboard players set @s Deaths 0

# Border tightnening
execute if score counter border < increment border run worldborder add -3 1
execute if score counter border < increment border run scoreboard players add counter border 3
execute if score timer RoundTime = twothirds RoundTime run scoreboard players set counter border 0
execute if score timer RoundTime = twothirds RoundTime run title @a title {"text":"\u0421\u0443\u0436\u0435\u043d\u0438\u0435 \u0431\u0430\u0440\u044c\u0435\u0440\u0430!","italic":true,"color":"black"}
execute if score timer RoundTime = third RoundTime run scoreboard players set counter border 0
execute if score timer RoundTime = third RoundTime run title @a title {"text":"\u0421\u0443\u0436\u0435\u043d\u0438\u0435 \u0431\u0430\u0440\u044c\u0435\u0440\u0430!","italic":true,"color":"black"}
execute if score timer RoundTime = half RoundTime run title @a title {"text":"\u041f\u0440\u043e\u0448\u043b\u0430 \u043f\u043e\u043b\u043e\u0432\u0438\u043d\u0430 \u0432\u0440\u0435\u043c\u0435\u043d\u0438!","italic":true,"color":"black"}


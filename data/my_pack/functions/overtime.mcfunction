execute if score alive RegPlayers > 1 intgers run schedule function my_pack:overtime 1s

# Counting alive players
scoreboard players set alive RegPlayers 0
execute as @a if score @s RegPlayers = 1 intgers run scoreboard players add alive RegPlayers 1

# Turning people that died multiple times into spectators
execute as @a run execute if score @s Deaths >= 1 intgers run gamemode spectator @s
execute as @a run execute if score @s Deaths >= 1 intgers run scoreboard players set @s RegPlayers 2
execute as @a run execute if score @s Deaths >= 1 intgers run scoreboard players set @s Deaths 0

execute if score alive RegPlayers = 1 intgers run function my_pack:game_end

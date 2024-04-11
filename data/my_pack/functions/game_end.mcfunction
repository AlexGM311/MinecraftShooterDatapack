scoreboard players operation $max kills > @a[scores={RegPlayers=1}] kills
# execute as @a if score @s kills < $max kills run gamemode spectator @s
# execute as @a if score @s kills < $max kills run scoreboard players set @s RegPlayers 2
# execute as @a if score @s kills < $max kills run title @s title {"text":"\u0412\u044b \u0432\u044b\u0431\u044b\u043b\u0438!","bold":true,"italic":true,"color":"dark_blue"}
scoreboard players set alive RegPlayers 0
execute as @a if score @s RegPlayers = 1 intgers run scoreboard players add alive RegPlayers 1

# If only one player remained
execute if score alive RegPlayers = 1 intgers run title @a times 20 100 20
execute if score alive RegPlayers = 1 intgers as @a if score @s kills = $max kills if score @s RegPlayers = 1 intgers run title @a title ["",{"text":"\u041b\u0443\u0447\u0448\u0438\u0439 \u0438\u0433\u0440\u043e\u043a:","color":"dark_red"},{"text":" "},{"selector":"@s","color":"dark_blue"}]
execute if score alive RegPlayers = 1 intgers run scoreboard players set started RoundTime -2
execute if score alive RegPlayers = 1 intgers run bossbar set roundtime visible false
execute if score alive RegPlayers = 1 intgers run schedule function my_pack:load 5s
scoreboard players reset $max kills

# Overtime if multiple players remained
execute if score alive RegPlayers > 1 intgers as @a at @s run playsound minecraft:block.beacon.activate ambient @s
execute if score alive RegPlayers > 1 intgers run title @a times 20 100 20
execute if score alive RegPlayers > 1 intgers run title @a title ["",{"text":"\u041e\u0432\u0435\u0440\u0442\u0430\u0439\u043c","underlined":true,"color":"dark_red"},{"text":" \u0434\u043b\u044f","color":"dark_red"},{"text":" "},{"selector":"@a[scores={RegPlayers=1}]","italic":true}]

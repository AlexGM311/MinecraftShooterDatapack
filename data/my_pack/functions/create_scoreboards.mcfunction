scoreboard objectives add RoundTime dummy
scoreboard objectives add intgers dummy
scoreboard objectives add timer dummy
scoreboard objectives add kills playerKillCount "Kills"
scoreboard objectives add Deaths deathCount
scoreboard objectives add HP health
bossbar add roundtime "До конца раунда осталось"
bossbar set minecraft:roundtime visible false
scoreboard objectives add border dummy
scoreboard objectives add RegPlayers trigger
scoreboard objectives add GameStartTrigger trigger
scoreboard objectives add ReadyToFight trigger
scoreboard objectives add Plane dummy
scoreboard players set exists Plane 0
execute as @e[tag=plane_anchor] run scoreboard players add exists Plane 1
scoreboard players set started RoundTime -1
scoreboard objectives add PlayerY dummy
scoreboard objectives add PlayerX dummy
scoreboard objectives add PlayerZ dummy
scoreboard objectives add DistToClosest dummy
team add Players "Players"
team modify Players nametagVisibility never
team add OnPlane "Flying"
team modify OnPlane nametagVisibility always
team modify OnPlane friendlyFire false
team modify OnPlane collisionRule never
scoreboard objectives add regentimer dummy
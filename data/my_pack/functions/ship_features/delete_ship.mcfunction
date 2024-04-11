execute as @e[tag=plane_anchor] run execute at @s run fill ~-2 ~-2 ~-5 ~5 ~ ~5 air
scoreboard players set exists Plane 0
execute as @e[tag=plane_anchor] run kill @s

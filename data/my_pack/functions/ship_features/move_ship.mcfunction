# Moving every quater second
execute if score exists Plane > 0 intgers run schedule function my_pack:ship_features/move_ship 0.25s replace
execute at @e[tag=plane_anchor] run clone ~-2 ~-2 ~-5 ~5 ~ ~5 ~-1 ~-2 ~-5 replace move
execute as @a at @s if block ~ ~-1 ~ quartz_block if score @s RegPlayers = 1 intgers if score @s PlayerY >= height Plane run tp @s ~1 ~ ~
scoreboard players add traversed Plane 1

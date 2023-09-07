execute as @e[tag=mine_display] run data modify entity @s transformation.scale set value [1f, 1f, 1f]
execute as @e[tag=mine_interaction] run data modify entity @s width set value 1.01f
execute as @e[tag=mine_interaction] run data modify entity @s height set value 1.01f

execute as @e[tag=mine_display] at @s run setblock ~ ~ ~ barrier replace
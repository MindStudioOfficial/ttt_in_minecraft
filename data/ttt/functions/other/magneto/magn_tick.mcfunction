execute as @e[tag=magn_interaction] run function ttt:other/magneto/magn_tick_interact

#* as the tracking player tp the closest tracked tnt interaction in front of the players eyes
execute as @a[tag=magn_tracking] at @s anchored eyes positioned ^ ^ ^1.8 positioned ~ ~-.5 ~ run tp @e[tag=magn_tracked,limit=1,sort=nearest] ~ ~ ~

#* check if a tnt physics entity currently has a tnt interaction attached
execute as @e[tag=magn_physics] at @s if entity @e[tag=magn_interaction,distance=...1] run tag @s add magn_has_interaction
execute as @e[tag=magn_physics] at @s unless entity @e[tag=magn_interaction,distance=...1] run tag @s remove magn_has_interaction

#* teleport tnt interaction without physics attached to tnt physics entity without interaction attached
execute as @e[tag=magn_interaction,tag=!magn_tracked] at @s unless entity @e[tag=magn_physics,distance=...1,tag=magn_has_interaction] run tp @s @e[tag=magn_physics,limit=1,sort=nearest,tag=!magn_has_interaction]

execute as @e[tag=magn_interaction,tag=magn_tracked] at @s unless entity @e[tag=magn_physics,distance=..5] run tag @s remove magn_tracked

function ttt:other/magneto/magn_calculate_apply_motion
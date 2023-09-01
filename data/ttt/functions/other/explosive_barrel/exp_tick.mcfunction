execute as @e[tag=tnt_interaction] run function ttt:other/explosive_barrel/exp_tick_interact

#* as the tracking player tp the closest tracked tnt interaction in front of the players eyes
execute as @a[tag=tnt_tracking] at @s anchored eyes positioned ^ ^ ^1.8 positioned ~ ~-.5 ~ run tp @e[tag=tnt_tracked,limit=1,sort=nearest] ~ ~ ~

#* check if a tnt physics entity currently has a tnt interaction attached
execute as @e[tag=tnt_physics] at @s if entity @e[tag=tnt_interaction,distance=...1] run tag @s add tnt_has_interaction
execute as @e[tag=tnt_physics] at @s unless entity @e[tag=tnt_interaction,distance=...1] run tag @s remove tnt_has_interaction

#* teleport tnt interaction without physics attached to tnt physics entity without interaction attached
execute as @e[tag=tnt_interaction,tag=!tnt_tracked] at @s unless entity @e[tag=tnt_physics,distance=...1,tag=tnt_has_interaction] run tp @s @e[tag=tnt_physics,limit=1,sort=nearest,tag=!tnt_has_interaction]

execute as @e[tag=tnt_interaction,tag=tnt_tracked] at @s unless entity @e[tag=tnt_physics,distance=..5] run tag @s remove tnt_tracked

function ttt:other/explosive_barrel/exp_calulate_apply_motion

#* tick explode
execute as @e[tag=tnt_physics,scores={grenadetime=1..}] run scoreboard players remove @s grenadetime 1
execute as @e[tag=tnt_physics,scores={grenadetime=0}] at @s run function ttt:other/explosive_barrel/exp_explode
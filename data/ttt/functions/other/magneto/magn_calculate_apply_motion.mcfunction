## v = p_target - p_current

#* store tnt interaction target position * 10
execute as @e[tag=magn_interaction,tag=magn_tracked] store result score @s x_10 run data get entity @s Pos[0] 10
execute as @e[tag=magn_interaction,tag=magn_tracked] store result score @s y_10 run data get entity @s Pos[1] 10
execute as @e[tag=magn_interaction,tag=magn_tracked] store result score @s z_10 run data get entity @s Pos[2] 10

#* store tnt phasics position * 10
execute as @e[tag=magn_physics] store result score @s x_10 run data get entity @s Pos[0] 10
execute as @e[tag=magn_physics] store result score @s y_10 run data get entity @s Pos[1] 10
execute as @e[tag=magn_physics] store result score @s z_10 run data get entity @s Pos[2] 10

#* calculate position difference
execute as @e[tag=magn_interaction,tag=magn_tracked] at @s run scoreboard players operation @s x_10 -= @e[tag=magn_physics,limit=1,sort=nearest] x_10
execute as @e[tag=magn_interaction,tag=magn_tracked] at @s run scoreboard players operation @s y_10 -= @e[tag=magn_physics,limit=1,sort=nearest] y_10
execute as @e[tag=magn_interaction,tag=magn_tracked] at @s run scoreboard players operation @s z_10 -= @e[tag=magn_physics,limit=1,sort=nearest] z_10

#* store position difference in motion
execute as @e[tag=magn_interaction,tag=magn_tracked] at @s store result entity @e[tag=magn_physics,limit=1,sort=nearest] Motion[0] double 0.1 run scoreboard players get @s x_10
execute as @e[tag=magn_interaction,tag=magn_tracked] at @s store result entity @e[tag=magn_physics,limit=1,sort=nearest] Motion[1] double 0.1 run scoreboard players get @s y_10
execute as @e[tag=magn_interaction,tag=magn_tracked] at @s store result entity @e[tag=magn_physics,limit=1,sort=nearest] Motion[2] double 0.1 run scoreboard players get @s z_10
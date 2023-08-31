#! executed as the shooter at the current ray position
summon marker ~ ~ ~ {Tags: ["ray_marker"]}

#* store the Y*10 value of the marker in the score of the shooter
execute store result score @s x_10 run data get entity @e[tag=ray_marker,limit=1] Pos[0] 10
execute store result score @s y_10 run data get entity @e[tag=ray_marker,limit=1] Pos[1] 10
execute store result score @s z_10 run data get entity @e[tag=ray_marker,limit=1] Pos[2] 10

execute store result score @s x_10_rounded run data get entity @e[tag=ray_marker,limit=1] Pos[0] 1
execute store result score @s y_10_rounded run data get entity @e[tag=ray_marker,limit=1] Pos[1] 1
execute store result score @s z_10_rounded run data get entity @e[tag=ray_marker,limit=1] Pos[2] 1

kill @e[tag=ray_marker]

scoreboard players operation @s x_10_rounded *= .10 constants
scoreboard players operation @s y_10_rounded *= .10 constants
scoreboard players operation @s z_10_rounded *= .10 constants

scoreboard players operation @s x_10 -= @s x_10_rounded
scoreboard players operation @s y_10 -= @s y_10_rounded
scoreboard players operation @s z_10 -= @s z_10_rounded


#* save the coordinates of the N W B corner
execute as @e[tag=dz_corner_1] store result score .corner1 x run data get entity @s Pos[0]
execute as @e[tag=dz_corner_1] store result score .corner1 y run data get entity @s Pos[1]
execute as @e[tag=dz_corner_1] store result score .corner1 z run data get entity @s Pos[2]

#* save the coordinates of the S E T corner
execute as @e[tag=dz_corner_2] store result score .corner2 x run data get entity @s Pos[0]
execute as @e[tag=dz_corner_2] store result score .corner2 y run data get entity @s Pos[1]
execute as @e[tag=dz_corner_2] store result score .corner2 z run data get entity @s Pos[2]

#* save the coordinates of the N W B corner
execute as @e[predicate=ttt:alive_player] store result score @s x run data get entity @s Pos[0]
execute as @e[predicate=ttt:alive_player] store result score @s y run data get entity @s Pos[1]
execute as @e[predicate=ttt:alive_player] store result score @s z run data get entity @s Pos[2]

#* check if the players coordinates are within the corners

execute as @e[predicate=ttt:alive_player,predicate=ttt:in_death_zone] at @s run function ttt:other/death_zone/death_zone_effect

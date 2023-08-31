tag @s add shooting
scoreboard players operation @s rangeleft = stats rangeleft
execute as @s at @s anchored eyes positioned ^ ^ ^ run function ttt:raycast/cast
scoreboard players reset @s rangeleft
tag @s remove shooting
tag @a remove hit
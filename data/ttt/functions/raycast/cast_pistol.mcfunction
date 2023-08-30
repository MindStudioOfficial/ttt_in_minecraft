#!executed as the firing player with tag shooting_pistol
tag @s add shooting
tag @s add shooting_pistol
#* cast ray recursively
scoreboard players operation @s rangeleft = stats rangeleft
execute as @s at @s anchored eyes positioned ^ ^ ^ run function ttt:raycast/tp
scoreboard players reset @s rangeleft
#* fire sound
playsound custom.fiveseven-1 player @a ~ ~ ~ .8 1 .01

#* remove 1 bullet from loaded
scoreboard players remove @s ammo_loaded_pistol 1
#* set fire cooldown
scoreboard players operation @s firecooldown = .pistol firecooldown
tag @s remove shooting
tag @s remove shooting_pistol
tag @a remove hit
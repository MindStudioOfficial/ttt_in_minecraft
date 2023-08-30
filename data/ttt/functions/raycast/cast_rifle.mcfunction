#!executed as the firing player with tag shooting_rifle
tag @s add shooting
tag @s add shooting_rifle
#* cast ray recursively
scoreboard players operation @s rangeleft = stats rangeleft
execute as @s at @s anchored eyes positioned ^ ^ ^ run function ttt:raycast/cast
scoreboard players reset @s rangeleft
#* fire sound
playsound custom.scout_fire-1 player @a ~ ~ ~ .8 1 .01

#* remove 1 bullet from loaded
scoreboard players remove @s ammo_loaded_rifle 1
#* set fire cooldown
scoreboard players operation @s firecooldown = .rifle firecooldown
tag @s remove shooting
tag @s remove shooting_rifle
tag @a remove hit
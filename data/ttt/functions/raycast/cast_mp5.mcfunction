#!executed as the firing player with tag shooting_mp5
tag @s add shooting_mp5
function ttt:raycast/cast_start
#* fire sound
playsound custom.mac10-1 player @a ~ ~ ~ .8 1 .01
#* remove 1 bullet from loaded
scoreboard players remove @s ammo_loaded_mp5 1
#* set fire cooldown
scoreboard players operation @s firecooldown = .mp5 firecooldown
tag @s remove shooting_mp5
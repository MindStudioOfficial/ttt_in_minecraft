#!executed as the firing player with tag shooting_rifle
tag @s add shooting_rifle
function ttt:raycast/cast_start
#* fire sound
playsound custom.scout_fire-1 player @a ~ ~ ~ .8 1 .01
#* remove 1 bullet from loaded
scoreboard players remove @s ammo_loaded_rifle 1
#* set fire cooldown
scoreboard players operation @s firecooldown = .rifle firecooldown
tag @s remove shooting_rifle
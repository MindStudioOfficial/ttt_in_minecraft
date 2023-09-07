execute as @a[predicate=!ttt:alive_player] run tag @s remove magn_tracking

#* if nothing tracked present stop tracking
execute as @a[predicate=ttt:alive_player] at @s positioned ^ ^ ^1.8 positioned ~ ~-.5 ~ unless entity @e[tag=magn_tracked,distance=..3] run tag @s remove magn_tracking

#* if no tracking player present stop being tracked
execute as @e[tag=magn_tracked] at @s unless entity @a[tag=magn_tracking,distance=..5] run tag @s remove magn_tracked

#* tag player as tracking upon right click on tnt
execute if entity @s[nbt={interaction: {}}] on target run tag @s add magn_tracking
#* tag the interaction as tracked
execute if entity @s[nbt={interaction: {}}] run tag @s add magn_tracked
#* reset the interaction
execute if entity @s[nbt={interaction: {}}] run data remove entity @s interaction

#* remove tracking tag upon left click on tnt
execute if entity @s[nbt={attack: {}}] on attacker run tag @s remove magn_tracking
#* remove the tracked tag
execute if entity @s[nbt={attack: {}}] run tag @s remove magn_tracked
#* reset the attack
execute if entity @s[nbt={attack: {}}] run data remove entity @s attack
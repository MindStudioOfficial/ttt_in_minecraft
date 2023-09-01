execute as @a[predicate=!ttt:alive_player] run tag @s remove tnt_tracking

#* if nothing tracked present stop tracking
execute as @a[predicate=ttt:alive_player] at @s positioned ^ ^ ^1.8 positioned ~ ~-.5 ~ unless entity @e[tag=tnt_tracked,distance=..3] run tag @s remove tnt_tracking

#* if no tracking player present stop being tracked
execute as @e[tag=tnt_tracked] at @s unless entity @a[tag=tnt_tracking,distance=..5] run tag @s remove tnt_tracked

#* tag player as tracking upon right click on tnt
execute if entity @s[nbt={interaction: {}}] on target run tag @s add tnt_tracking
execute if entity @s[nbt={interaction: {}}] run tag @s add tnt_tracked
execute if entity @s[nbt={interaction: {}}] run data remove entity @s interaction

#* remove tracking tag upon left click on tnt
execute if entity @s[nbt={attack: {}}] on attacker run tag @s remove tnt_tracking
execute if entity @s[nbt={attack: {}}] run tag @s remove tnt_tracked
execute if entity @s[nbt={attack: {}}] run data remove entity @s attack
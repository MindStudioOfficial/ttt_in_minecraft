execute as @a[nbt={SelectedItem: {tag: {d_radar: 1b}}}] unless entity @s[scores={radartime=0..100}] run scoreboard players set @s radartime 0
execute as @a[nbt={SelectedItem: {tag: {d_radar: 1b}}},scores={radartime=0..100}] run scoreboard players add @s radartime 1

execute as @a[nbt={SelectedItem: {tag: {d_radar: 1b}}},scores={radartime=100..}] at @s run function ttt:roles/traitor/updateradar
execute if entity @s[nbt={attack: {}}] at @s run data modify entity @e[tag=mine_display,limit=1,sort=nearest] transformation.scale set value [0f, 0f, 0f]
execute if entity @s[nbt={attack: {}}] at @s run data modify entity @s width set value 0f
execute if entity @s[nbt={attack: {}}] at @s run data modify entity @s height set value 0f
execute if entity @s[nbt={attack: {}}] at @s run fill ~ ~ ~ ~ ~ ~ air replace barrier
execute if entity @s[nbt={attack: {}}] run data remove entity @s attack
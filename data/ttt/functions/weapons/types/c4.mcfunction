#* set c4 to 30s
execute as @e[tag=c4] at @s unless entity @s[scores={c4time=1..}] run scoreboard players set @s c4time 619
#* decrease c4 by 1 every tick
execute as @e[tag=c4,scores={c4time=1..}] at @s run scoreboard players remove @s c4time 1
execute as @e[tag=c4] run scoreboard players operation @s c4seconds = @s c4time
execute as @e[tag=c4] run scoreboard players operation @s c4seconds /= @e[tag=sign,limit=1] 20

#* change c4 model
execute as @e[tag=c4,scores={c4seconds=30}] unless entity @s[nbt={item.tag.CustomModelData: 30}] run data modify entity @s item.tag.CustomModelData set value 30
execute as @e[tag=c4,scores={c4seconds=29}] unless entity @s[nbt={item.tag.CustomModelData: 29}] run data modify entity @s item.tag.CustomModelData set value 29
execute as @e[tag=c4,scores={c4seconds=28}] unless entity @s[nbt={item.tag.CustomModelData: 28}] run data modify entity @s item.tag.CustomModelData set value 28
execute as @e[tag=c4,scores={c4seconds=27}] unless entity @s[nbt={item.tag.CustomModelData: 27}] run data modify entity @s item.tag.CustomModelData set value 27
execute as @e[tag=c4,scores={c4seconds=26}] unless entity @s[nbt={item.tag.CustomModelData: 26}] run data modify entity @s item.tag.CustomModelData set value 26
execute as @e[tag=c4,scores={c4seconds=25}] unless entity @s[nbt={item.tag.CustomModelData: 25}] run data modify entity @s item.tag.CustomModelData set value 25
execute as @e[tag=c4,scores={c4seconds=24}] unless entity @s[nbt={item.tag.CustomModelData: 24}] run data modify entity @s item.tag.CustomModelData set value 24
execute as @e[tag=c4,scores={c4seconds=23}] unless entity @s[nbt={item.tag.CustomModelData: 23}] run data modify entity @s item.tag.CustomModelData set value 23
execute as @e[tag=c4,scores={c4seconds=22}] unless entity @s[nbt={item.tag.CustomModelData: 22}] run data modify entity @s item.tag.CustomModelData set value 22
execute as @e[tag=c4,scores={c4seconds=21}] unless entity @s[nbt={item.tag.CustomModelData: 21}] run data modify entity @s item.tag.CustomModelData set value 21
execute as @e[tag=c4,scores={c4seconds=20}] unless entity @s[nbt={item.tag.CustomModelData: 20}] run data modify entity @s item.tag.CustomModelData set value 20
execute as @e[tag=c4,scores={c4seconds=19}] unless entity @s[nbt={item.tag.CustomModelData: 19}] run data modify entity @s item.tag.CustomModelData set value 19
execute as @e[tag=c4,scores={c4seconds=18}] unless entity @s[nbt={item.tag.CustomModelData: 18}] run data modify entity @s item.tag.CustomModelData set value 18
execute as @e[tag=c4,scores={c4seconds=17}] unless entity @s[nbt={item.tag.CustomModelData: 17}] run data modify entity @s item.tag.CustomModelData set value 17
execute as @e[tag=c4,scores={c4seconds=16}] unless entity @s[nbt={item.tag.CustomModelData: 16}] run data modify entity @s item.tag.CustomModelData set value 16
execute as @e[tag=c4,scores={c4seconds=15}] unless entity @s[nbt={item.tag.CustomModelData: 15}] run data modify entity @s item.tag.CustomModelData set value 15
execute as @e[tag=c4,scores={c4seconds=14}] unless entity @s[nbt={item.tag.CustomModelData: 14}] run data modify entity @s item.tag.CustomModelData set value 14
execute as @e[tag=c4,scores={c4seconds=13}] unless entity @s[nbt={item.tag.CustomModelData: 13}] run data modify entity @s item.tag.CustomModelData set value 13
execute as @e[tag=c4,scores={c4seconds=12}] unless entity @s[nbt={item.tag.CustomModelData: 12}] run data modify entity @s item.tag.CustomModelData set value 12
execute as @e[tag=c4,scores={c4seconds=11}] unless entity @s[nbt={item.tag.CustomModelData: 11}] run data modify entity @s item.tag.CustomModelData set value 11
execute as @e[tag=c4,scores={c4seconds=10}] unless entity @s[nbt={item.tag.CustomModelData: 10}] run data modify entity @s item.tag.CustomModelData set value 10
execute as @e[tag=c4,scores={c4seconds=9}] unless entity @s[nbt={item.tag.CustomModelData: 9}] run data modify entity @s item.tag.CustomModelData set value 9
execute as @e[tag=c4,scores={c4seconds=8}] unless entity @s[nbt={item.tag.CustomModelData: 8}] run data modify entity @s item.tag.CustomModelData set value 8
execute as @e[tag=c4,scores={c4seconds=7}] unless entity @s[nbt={item.tag.CustomModelData: 7}] run data modify entity @s item.tag.CustomModelData set value 7
execute as @e[tag=c4,scores={c4seconds=6}] unless entity @s[nbt={item.tag.CustomModelData: 6}] run data modify entity @s item.tag.CustomModelData set value 6
execute as @e[tag=c4,scores={c4seconds=5}] unless entity @s[nbt={item.tag.CustomModelData: 5}] run data modify entity @s item.tag.CustomModelData set value 5
execute as @e[tag=c4,scores={c4seconds=4}] unless entity @s[nbt={item.tag.CustomModelData: 4}] run data modify entity @s item.tag.CustomModelData set value 4
execute as @e[tag=c4,scores={c4seconds=3}] unless entity @s[nbt={item.tag.CustomModelData: 3}] run data modify entity @s item.tag.CustomModelData set value 3
execute as @e[tag=c4,scores={c4seconds=2}] unless entity @s[nbt={item.tag.CustomModelData: 2}] run data modify entity @s item.tag.CustomModelData set value 2
execute as @e[tag=c4,scores={c4seconds=1}] unless entity @s[nbt={item.tag.CustomModelData: 1}] run data modify entity @s item.tag.CustomModelData set value 1
execute as @e[tag=c4,scores={c4seconds=0}] unless entity @s[nbt={item.tag.CustomModelData: 0}] run data modify entity @s item.tag.CustomModelData set value 0

#* play sound every second
execute as @e[tag=c4,scores={c4time=1..}] run scoreboard players operation @s value = @s c4time
execute as @e[tag=c4,scores={c4time=1..}] run scoreboard players operation @s value %= @e[tag=sign,limit=1] 20
execute as @e[tag=c4,scores={c4time=1..}] at @s if score @s value matches 0 run playsound minecraft:block.note_block.bit player @a ~ ~ ~ .2 2 .05


#* BOOM
execute as @e[tag=c4,scores={c4time=..0}] at @s run playsound entity.generic.explode player @a ~ ~ ~ 1 1 .1
execute as @e[tag=c4,scores={c4time=..0}] at @s run particle explosion ~ ~ ~ 2 2 2 1 100 force
execute as @e[tag=c4,scores={c4time=..0}] at @s run execute at @a[distance=0..10] run damage @p 100 generic
execute as @e[tag=c4,scores={c4time=..0}] at @s run execute at @a[distance=10..20] run damage @p 18 generic
execute as @e[tag=c4,scores={c4time=..0}] at @s run execute at @a[distance=20..40] run damage @p 5 generic
execute as @e[tag=c4,scores={c4time=..0}] at @s run kill @s
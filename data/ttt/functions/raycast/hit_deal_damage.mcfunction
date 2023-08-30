

#* deal pistol damage
execute if entity @s[tag=shooting_pistol] as @a[tag=hit_feet,tag=!hit] run damage @s 2 minecraft:generic by @p[tag=shooting_pistol]
execute if entity @s[tag=shooting_pistol] as @a[tag=hit_feet,tag=!hit] run scoreboard players set @s damage 2

execute if entity @s[tag=shooting_pistol] as @a[tag=hit_head,tag=!hit_feet,tag=!hit] run damage @s 7 minecraft:generic by @p[tag=shooting_pistol]
execute if entity @s[tag=shooting_pistol] as @a[tag=hit_head,tag=!hit_feet,tag=!hit] run scoreboard players set @s damage 7

execute if entity @s[tag=shooting_pistol] as @a[tag=hit_body,tag=!hit_feet,tag=!hit_head,tag=!hit] run damage @s 4 minecraft:generic by @p[tag=shooting_pistol]
execute if entity @s[tag=shooting_pistol] as @a[tag=hit_body,tag=!hit_feet,tag=!hit_head,tag=!hit] run scoreboard players set @s damage 4


#* deal rifle damage
execute if entity @s[tag=shooting_rifle] as @a[tag=hit_feet,tag=!hit] run damage @s 5 minecraft:generic by @p[tag=shooting_rifle]
execute if entity @s[tag=shooting_rifle] as @a[tag=hit_feet,tag=!hit] run scoreboard players set @s damage 5

execute if entity @s[tag=shooting_rifle] as @a[tag=hit_head,tag=!hit_feet,tag=!hit] run damage @s 14 minecraft:generic by @p[tag=shooting_rifle]
execute if entity @s[tag=shooting_rifle] as @a[tag=hit_head,tag=!hit_feet,tag=!hit] run scoreboard players set @s damage 14

execute if entity @s[tag=shooting_rifle] as @a[tag=hit_body,tag=!hit_feet,tag=!hit_head,tag=!hit] run damage @s 7 minecraft:generic by @p[tag=shooting_rifle]
execute if entity @s[tag=shooting_rifle] as @a[tag=hit_body,tag=!hit_feet,tag=!hit_head,tag=!hit] run scoreboard players set @s damage 7

#* deal mp5 damage
execute if entity @s[tag=shooting_mp5] as @a[tag=hit_feet,tag=!hit] run damage @s 1 minecraft:generic by @p[tag=shooting_mp5]
execute if entity @s[tag=shooting_mp5] as @a[tag=hit_feet,tag=!hit] run scoreboard players set @s damage 1

execute if entity @s[tag=shooting_mp5] as @a[tag=hit_head,tag=!hit_feet,tag=!hit] run damage @s 2 minecraft:generic by @p[tag=shooting_mp5]
execute if entity @s[tag=shooting_mp5] as @a[tag=hit_head,tag=!hit_feet,tag=!hit] run scoreboard players set @s damage 2

execute if entity @s[tag=shooting_mp5] as @a[tag=hit_body,tag=!hit_feet,tag=!hit_head,tag=!hit] run damage @s 1 minecraft:generic by @p[tag=shooting_mp5]
execute if entity @s[tag=shooting_mp5] as @a[tag=hit_body,tag=!hit_feet,tag=!hit_head,tag=!hit] run scoreboard players set @s damage 1


execute as @a[tag=hit_feet] run tag @s add hit
execute as @a[tag=hit_body] run tag @s add hit
execute as @a[tag=hit_head] run tag @s add hit

#* summon damage indicator
execute if entity @a[scores={damage=1..}] positioned ^ ^-.2 ^-.5 run function ttt:weapons/damage_indicator_summon

scoreboard players reset @a damage
#* remove hit tags
tag @a remove hit_feet
tag @a remove hit_body
tag @a remove hit_head
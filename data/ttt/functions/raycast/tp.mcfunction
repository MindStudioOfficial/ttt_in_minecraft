#make loop from 0 to 200
scoreboard players add @s value 1
#cast the ray 200 blocks unless block in 1 gametick
execute at @e[tag=ray,limit=1,sort=nearest] if block ~ ~ ~ air run tp @s ^ ^ ^-1
#execute at @e[tag=ray] run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force

#* Damage:

#* RIFLE
#execute at @e[tag=ray_rifle] if entity @a[distance=...8] run effect give @a[distance=...8,team=!preparing] instant_damage 1 0
#execute at @e[tag=ray_rifle] positioned ~ ~-1 ~ if entity @a[distance=...8] run effect give @a[distance=...8,team=!preparing] instant_damage 1 1
execute at @e[tag=ray_rifle] if entity @a[distance=...8] run damage @a[distance=...8,team=!preparing,limit=1,sort=nearest] 10 minecraft:generic
execute at @e[tag=ray_rifle] positioned ~ ~-1 ~ if entity @a[distance=...8] run damage @a[distance=...8,team=!preparing,limit=1,sort=nearest] 10 minecraft:generic
#* Pistol
#execute at @e[tag=ray_rifle] if entity @a[distance=...8] run effect give @a[distance=...8,team=!preparing] instant_damage 1 0
#execute at @e[tag=ray_rifle] positioned ~ ~-1 ~ if entity @a[distance=...8] run effect give @a[distance=...8,team=!preparing] instant_damage 1 1
execute at @e[tag=ray_pistol] if entity @a[distance=...8] run damage @a[distance=...8,team=!preparing,limit=1,sort=nearest] 5 minecraft:generic
execute at @e[tag=ray_pistol] positioned ~ ~-1 ~ if entity @a[distance=...8] run damage @a[distance=...8,team=!preparing,limit=1,sort=nearest] 5 minecraft:generic
#!execute at @e[tag=ray_pistol] run particle flame ~ ~ ~ 0 0 0 0 1 force


#* Break glass
execute at @e[tag=ray,limit=1] if entity @e[tag=glass,distance=..1] run execute at @e[tag=glass,limit=1,sort=nearest] run fill ~ ~ ~ ~ ~1 ~ air destroy
execute at @e[tag=ray,limit=1] positioned ~ ~-1 ~ if entity @e[tag=glass,distance=..1] run execute at @e[tag=glass,limit=1,sort=nearest] run fill ~ ~ ~ ~ ~1 ~ air destroy

#* loop
execute as @s[scores={value=..199}] run function ttt:raycast/tp

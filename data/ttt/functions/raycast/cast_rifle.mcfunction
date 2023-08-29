#executed as the firing player with click=1.. and nbt rifle=1b
#* summon ray marker
execute if entity @s[scores={c_ammo_rifle=1..}] run summon marker ^ ^ ^2.1 {Tags: ["ray_rifle", "ray"]}
execute if entity @s[scores={c_ammo_rifle=1..}] at @e[tag=ray_rifle,limit=1,sort=nearest] run tp @e[tag=ray_rifle,limit=1,sort=nearest] ~ ~ ~ facing entity @s
execute if entity @s[scores={c_ammo_rifle=1..}] at @e[tag=ray_rifle,limit=1,sort=nearest] run tp @e[tag=ray_rifle,limit=1,sort=nearest] ~ ~1.5 ~
#* cast ray recursively
execute if entity @s[scores={c_ammo_rifle=1..}] as @e[tag=ray_rifle,limit=1,sort=nearest] at @s if predicate ttt:in_ray_passable_block run function ttt:raycast/tp
#* fire sound
execute if entity @s[scores={c_ammo_rifle=1..}] run playsound custom.scout_fire-1 player @a ~ ~ ~ .8 1 .01
#* remove 1 bullet from magazine
execute if entity @s[scores={c_ammo_rifle=1..}] run scoreboard players remove @s c_ammo_rifle 1
#* if mag empty
execute if entity @s[scores={t_ammo_rifle=..0}] run playsound custom.clipempty_rifle player @a ~ ~ ~ 1 1
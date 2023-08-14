#executed as the firing player with click=1.. and nbt pistol=1b
#* summon ray marker
execute if entity @s[scores={c_ammo_pistol=1..}] run summon marker ^ ^ ^2.1 {Tags: ["ray_pistol", "ray"]}
execute if entity @s[scores={c_ammo_pistol=1..}] at @e[tag=ray_pistol,limit=1,sort=nearest] run tp @e[tag=ray_pistol,limit=1,sort=nearest] ~ ~ ~ facing entity @s
execute if entity @s[scores={c_ammo_pistol=1..}] at @e[tag=ray_pistol,limit=1,sort=nearest] run tp @e[tag=ray_pistol,limit=1,sort=nearest] ~ ~1.5 ~
#* cast ray recursively
execute if entity @s[scores={c_ammo_pistol=1..}] as @e[tag=ray_pistol,limit=1,sort=nearest] at @s if block ~ ~ ~ air run function ttt:raycast/tp
#* fire sound
execute if entity @s[scores={c_ammo_pistol=1..}] run playsound custom.fiveseven-1 player @a ~ ~ ~ 1 1
#* remove 1 bullet from magazine
execute if entity @s[scores={c_ammo_pistol=1..}] run scoreboard players remove @s c_ammo_pistol 1
#* if mag empty
execute if entity @s[scores={c_ammo_pistol=..0}] run playsound custom.clipempty_pistol player @a ~ ~ ~ 1 1
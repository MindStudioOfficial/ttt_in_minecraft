scoreboard players add @s c_ammo_rifle 1
scoreboard players remove @s t_ammo_rifle 1
scoreboard players set @s reloaddelay 0
execute as @s at @s run playsound custom.scout_bolt player @a ~ ~ ~ 1 1

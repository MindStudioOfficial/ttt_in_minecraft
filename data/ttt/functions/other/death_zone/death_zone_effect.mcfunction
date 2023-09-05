scoreboard players set @s damage 4
execute positioned ^ ^1 ^.5 run function ttt:weapons/damage_indicator_summon
scoreboard players reset @s damage
damage @s 4 generic by @s
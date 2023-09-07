#? executed as the target tp at the source tp
tp @a[scores={tp_cooldown=..0},distance=..1] @s
execute at @s run scoreboard players set @a[scores={tp_cooldown=..0},distance=..1] tp_cooldown 40
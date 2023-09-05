execute as @e[tag=spawner,tag=!glass,tag=!dz_corner_1,tag=!dz_corner_2] at @s if entity @a[predicate=ttt:admin_holding_spawner,distance=..50] run particle minecraft:flame ~ ~.5 ~ 0 1 0 0 10 force
execute as @e[tag=spawner,tag=!glass,tag=!dz_corner_1,tag=!dz_corner_2] at @s if entity @a[predicate=ttt:admin_holding_spawner,distance=..50] run particle minecraft:flame ^ ^.5 ^.5 0 0 0 0 10 force

execute as @e[tag=spawnpoint] at @s if entity @a[predicate=ttt:admin_holding_spawner,distance=..50] run particle minecraft:heart ~ ~.5 ~ 0 1 0 0 1 force
execute as @e[tag=sign] at @s if entity @a[predicate=ttt:admin_holding_spawner,distance=..50] run particle minecraft:happy_villager ~ ~.5 ~ 0 1 0 0 1 force
execute as @e[tag=glass,tag=spawner] at @s if entity @a[predicate=ttt:admin_holding_spawner,distance=..50] run particle minecraft:glow ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=glass,tag=!spawner] at @s if entity @a[predicate=ttt:admin_holding_spawner,distance=..50] run particle minecraft:glow_squid_ink ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=tdoor,tag=spawner] at @s if entity @a[predicate=ttt:admin_holding_spawner,distance=..50] run particle minecraft:portal ~ ~.5 ~ 0.1 0 0.1 0 10 force
execute as @e[tag=explosive_barrel,tag=spawner] at @s if entity @a[predicate=ttt:admin_holding_spawner,distance=..50] run particle minecraft:smoke ~ ~.5 ~ 0.1 0 0.1 0 10 force

#* death zone corner

#? N W T

#* X+
execute as @e[tag=dz_corner_1] at @s if entity @a[predicate=ttt:admin_holding_spawner,distance=..50] run particle minecraft:flame ~2 ~ ~ 0.5 0 0 0 10 force

#* Y+
execute as @e[tag=dz_corner_1] at @s if entity @a[predicate=ttt:admin_holding_spawner,distance=..50] run particle minecraft:flame ~ ~2 ~ 0 0.5 0 0 10 force

#* Z+
execute as @e[tag=dz_corner_1] at @s if entity @a[predicate=ttt:admin_holding_spawner,distance=..50] run particle minecraft:flame ~ ~ ~2 0 0 0.5 0 10 force

#? S E B

#* X-
execute as @e[tag=dz_corner_2] at @s if entity @a[predicate=ttt:admin_holding_spawner,distance=..50] run particle minecraft:flame ~-2 ~ ~ 0.5 0 0 0 10 force

#* Y-
execute as @e[tag=dz_corner_2] at @s if entity @a[predicate=ttt:admin_holding_spawner,distance=..50] run particle minecraft:flame ~ ~-2 ~ 0 0.5 0 0 10 force

#* Z-
execute as @e[tag=dz_corner_2] at @s if entity @a[predicate=ttt:admin_holding_spawner,distance=..50] run particle minecraft:flame ~ ~ ~-2 0 0 0.5 0 10 force
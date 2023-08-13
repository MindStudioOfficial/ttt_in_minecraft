execute as @e[tag=spawner,tag=!glass] at @s if entity @a[team=admin,nbt={SelectedItem: {tag: {removespawner: 1b}}},distance=..50] run particle minecraft:flame ~ ~.5 ~ 0 1 0 0 10 force
execute as @e[tag=spawner,tag=!glass] at @s if entity @a[team=admin,nbt={SelectedItem: {tag: {removespawner: 1b}}},distance=..50] run particle minecraft:flame ^ ^.5 ^.5 0 0 0 0 10 force

execute as @e[tag=spawnpoint] at @s if entity @a[team=admin,nbt={SelectedItem: {tag: {removespawner: 1b}}},distance=..50] run particle minecraft:heart ~ ~.5 ~ 0 1 0 0 1 force
execute as @e[tag=sign] at @s if entity @a[team=admin,nbt={SelectedItem: {tag: {removespawner: 1b}}},distance=..50] run particle minecraft:happy_villager ~ ~.5 ~ 0 1 0 0 1 force
execute as @e[tag=glass,tag=spawner] at @s if entity @a[team=admin,nbt={SelectedItem: {tag: {removespawner: 1b}}},distance=..50] run particle minecraft:glow ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=glass,tag=!spawner] at @s if entity @a[team=admin,nbt={SelectedItem: {tag: {removespawner: 1b}}},distance=..50] run particle minecraft:glow_squid_ink ~ ~ ~ 0 0 0 0 1 force
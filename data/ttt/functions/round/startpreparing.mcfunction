#*preparingtime: (def. 30) when changed, set regeneration time below to same value
scoreboard players set @e[tag=sign] roundtime 30

function ttt:round/reset_time_display

function ttt:round/kill_round_entities
xp set @a 0 levels
xp set @a 0 points

title @a title ""
clear @a[team=!admin]
function ttt:weapons/remove_pickup_items
function ttt:weapons/summon_pickup_items

effect give @e[team=!admin] minecraft:regeneration 30 100 true

function ttt:weapons/resetammo
function ttt:shops/resetshops
function ttt:other/glass_reset

#* respawn players at spawnpoint, if no player close,
execute as @e[tag=spawnpoint,sort=random] at @s unless entity @a[distance=..1] if entity @a[team=roundover] run function ttt:player_respawn
gamemode adventure @a[team=preparing]

scoreboard players set @e[tag=sign] roundstage 1

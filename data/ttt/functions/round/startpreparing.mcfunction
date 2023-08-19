#*preparingtime: (def. 30) when changed, set regeneration time below to same value
scoreboard players set @e[tag=sign] roundtime 30

scoreboard players set @e[tag=sign] rtseconds 0
scoreboard players set @e[tag=sign] rtminutes 0
scoreboard players set @e[tag=sign] i 0

#team join preparing @a[team=!admin]
gamemode adventure @a[team=!admin]
kill @e[tag=corpse]
kill @e[tag=feet]
kill @e[tag=head]
kill @e[type=item]
kill @e[tag=c4]
xp set @a 0 levels
xp set @a 0 points

title @a title ""
clear @a[team=!admin]
function ttt:weapons/remove_pickup_items
function ttt:weapons/summon_pickup_items

effect give @e[team=!admin] minecraft:regeneration 30 100 true

function ttt:weapons/resetammo


#reset shops
function ttt:shops/resetshops

function ttt:other/glass_reset

scoreboard players set @e[tag=sign] roundstage 1

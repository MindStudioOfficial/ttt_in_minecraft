#preparingtime: (def. 30)
scoreboard players set @e[tag=sign] roundtime 30

scoreboard players set @e[tag=sign] rtseconds 0
scoreboard players set @e[tag=sign] rtminutes 0
scoreboard players set @e[tag=sign] i 0

#team join preparing @a[team=!admin]
gamemode adventure @a[team=!admin]
kill @e[tag=head]
kill @e[tag=feet]
kill @e[type=item]
xp set @a 0 levels
xp set @a 0 points
#function ttt:respawn

title @a title ""
clear @a[team=!admin]
function ttt:weapons/remove_pickup_items
function ttt:weapons/summon_pickup_items

effect give @e[team=!admin] minecraft:regeneration 30 100 true

function ttt:weapons/resetammo


#reset shops
function ttt:shops/resetshops

function ttt:other/resetglass

scoreboard players set @e[tag=sign] roundstage 1

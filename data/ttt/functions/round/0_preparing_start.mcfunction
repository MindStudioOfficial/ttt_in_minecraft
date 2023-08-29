#*preparingtime: (def. 30) when changed, set regeneration time below to same value
scoreboard players set @e[tag=sign] roundtime 30

function ttt:round/reset_time_display

function ttt:round/kill_round_entities
xp set @a 0 levels
xp set @a 0 points

title @a title ""
clear @a[predicate=ttt:any_player]
function ttt:weapons/remove_pickup_items
function ttt:weapons/summon_pickup_items

effect give @e[predicate=ttt:any_player] minecraft:regeneration 30 100 true

function ttt:weapons/resetammo
function ttt:shops/resetshops
function ttt:other/glass_reset

scoreboard players set @e[tag=sign] roundstage 1

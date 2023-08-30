#*preparingtime: (def. 30) when changed, set regeneration time below to same value
scoreboard players set stats roundtime 30

function ttt:round/reset_time_display

function ttt:round/kill_round_entities
xp set @a 0 levels
xp set @a 0 points

title @a clear
clear @a[predicate=ttt:any_player]
function ttt:weapons/remove_pickup_items
function ttt:weapons/summon_pickup_items

effect give @e[predicate=ttt:any_player] minecraft:regeneration 30 100 true

function ttt:weapons/resetammo
function ttt:shops/resetshops
function ttt:other/glass_reset

function ttt:round/points_show

scoreboard players set stats roundstage 1

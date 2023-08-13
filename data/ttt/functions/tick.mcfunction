#COMMANDS IN THIS FUNCTION ARE TICKED 20 TIMES A SECOND

function ttt:death
function ttt:confirm
function ttt:roundtimer
function ttt:title
function ttt:count/innocentcount
function ttt:count/traitorcount
function ttt:count/playercount

execute if entity @e[tag=sign,scores={roundstage=3,roundtime=..410,traitorcount=0}] run function ttt:win
execute if entity @e[tag=sign,scores={roundstage=3,roundtime=..410,innocentcount=0}] run function ttt:win

function ttt:weapons/pickup
function ttt:raycast/clickdetect/tickdetect
function ttt:weapons/convertitems

function ttt:weapons/types/grenades/grenade_mechanics

function ttt:weapons/ammo
function ttt:inventory

function ttt:highlightspawner

#shops
function ttt:shops/t_shop

kill @e[type=minecraft:experience_orb]

function ttt:removespawner

function ttt:t_door
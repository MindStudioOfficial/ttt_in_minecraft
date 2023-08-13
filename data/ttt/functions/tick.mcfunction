#COMMANDS IN THIS FUNCTION ARE TICKED 20 TIMES A SECOND

function ttt:death/checkdeath
function ttt:death/confirm
function ttt:round/roundtimer
function ttt:update_title
function ttt:playercount/innocentcount
function ttt:playercount/traitorcount
function ttt:playercount/playercount

execute if entity @e[tag=sign,scores={roundstage=3,roundtime=..415,traitorcount=0}] run function ttt:round/show_win
execute if entity @e[tag=sign,scores={roundstage=3,roundtime=..415,innocentcount=0}] run function ttt:round/show_win

function ttt:weapons/pickup
function ttt:raycast/clickdetect/tickdetect
function ttt:weapons/convertitems

function ttt:weapons/types/grenades/grenade_mechanics

function ttt:weapons/ammo
function ttt:update_inventory

function ttt:spawner_highlight

#shops
function ttt:shops/t_shop

kill @e[type=minecraft:experience_orb]

function ttt:spawner_remove

function ttt:update_tdoor
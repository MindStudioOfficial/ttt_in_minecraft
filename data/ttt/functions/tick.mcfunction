#COMMANDS IN THIS FUNCTION ARE TICKED 20 TIMES A SECOND

#* tick once every second
scoreboard players add global i 1
execute if score global i matches 20.. run function ttt:tick_one_second
execute if score global i matches 20.. run scoreboard players set global i 0

function ttt:death/checkdeath
function ttt:death/confirm_tick
function ttt:round/_round_timer
function ttt:update_title
function ttt:playercount/innocentcount
function ttt:playercount/traitorcount
function ttt:playercount/playercount

function ttt:round/check_win

function ttt:weapons/tickweapons
function ttt:roles/tickroles

function ttt:items/items_tick

function ttt:spawner_highlight

#shops
function ttt:shops/t_shop

kill @e[type=minecraft:experience_orb]

function ttt:spawner_remove

function ttt:update_tdoor

function ttt:other/explosive_barrel/exp_tick
function ttt:other/magneto/magn_tick
function ttt:other/teleporter/tp_tick
function ttt:other/mineable/mine_tick
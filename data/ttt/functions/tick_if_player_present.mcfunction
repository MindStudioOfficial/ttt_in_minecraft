#? COMMANDS IN THIS FUNCTION ARE RUN ONCE PER TICK IF A PLAYER IS IN THE GAME


#* ROUND TIME ================
function ttt:round/_round_timer

#* tick once every second
scoreboard players add global i 1
execute if score global i matches 20.. run function ttt:tick_one_second
execute if score global i matches 20.. run scoreboard players set global i 0

function ttt:round/check_win

function ttt:update_title


#* DEATH =====================
function ttt:death/checkdeath
function ttt:death/confirm_tick

#* WEAPONS ===================
function ttt:weapons/tickweapons

#* ITEMS =====================
function ttt:items/items_tick

#* ROLES AND THEIR FEATURES ==
function ttt:roles/tickroles
function ttt:update_tdoor

#* SHOPS =====================
function ttt:shops/t_shop

#* ADMIN =====================
execute if entity @a[team=admin] run function ttt:spawner_highlight
execute if entity @a[team=admin] run function ttt:spawner_remove

#* ENTITIES ==================
kill @e[type=minecraft:experience_orb]

#* OTHER FEATURES ============
function ttt:other/explosive_barrel/exp_tick
function ttt:other/magneto/magn_tick
function ttt:other/teleporter/tp_tick
function ttt:other/mineable/mine_tick
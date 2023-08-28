#roundtime: (def. 420)
scoreboard players set @e[tag=sign] roundtime 420

function ttt:round/reset_time_display

function ttt:teams/assign_random

function ttt:round/kill_dead_bodies

item replace entity @a[team=traitor] hotbar.8 with emerald{display: {Name: '{"text":"Credit","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}, HideFlags: 1, credit: 1b, Enchantments: [{id: "minecraft:protection", lvl: 1s}]} 3
scoreboard players set @e[tag=sign] roundstage 3

#roundtime: (def. 420)
scoreboard players set @e[tag=sign] roundtime 420

scoreboard players set @e[tag=sign] rtseconds 0
scoreboard players set @e[tag=sign] rtminutes 0
scoreboard players set @e[tag=sign] i 0

team join traitor @r[team=preparing,gamemode=adventure]
team join innocent @r[team=preparing,gamemode=adventure]
team join innocent @r[team=preparing,gamemode=adventure]
team join innocent @r[team=preparing,gamemode=adventure]
team join traitor @r[team=preparing,gamemode=adventure]
team join detective @r[team=preparing,gamemode=adventure]
team join innocent @r[team=preparing,gamemode=adventure]
team join traitor @r[team=preparing,gamemode=adventure]
team join innocent @r[team=preparing,gamemode=adventure]
team join traitor @r[team=preparing,gamemode=adventure]

kill @e[tag=spawned]
kill @e[tag=head]
kill @e[tag=feet]

item replace entity @a[team=traitor] hotbar.8 with emerald{display: {Name: '{"text":"Credit","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}, HideFlags: 1, credit: 1b, Enchantments: [{id: "minecraft:protection", lvl: 1s}]} 3
scoreboard players set @e[tag=sign] roundstage 3

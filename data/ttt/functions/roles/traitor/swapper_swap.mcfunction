#* mark the target player position
execute at @a[predicate=ttt:alive_player,distance=1..,limit=1,sort=random] run summon marker ~ ~ ~ {Tags: ["swapto"]}

#* teleport the target player to you
execute at @e[tag=swapto,limit=1,sort=nearest] run tellraw @s [{"text": "Swapping with ", "color": "dark_aqua"} ,{"selector":"@p"}]
execute if entity @s[predicate=ttt:alive_player] at @e[tag=swapto,limit=1,sort=nearest] run tp @p @s

#* teleport you to the target players marked position
tp @s @e[tag=swapto,limit=1,sort=nearest]

#* remove the marker
kill @e[tag=swapto]
playsound block.note_block.bit player @s ~ ~ ~ .5 2
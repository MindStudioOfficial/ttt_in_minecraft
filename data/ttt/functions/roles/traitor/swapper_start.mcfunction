tellraw @s {"text": "Swapping position in 5s", "color": "dark_aqua"}
clear @s ender_eye{t_swapper: 1b}
playsound block.note_block.bit player @s ~ ~ ~ .5 1
scoreboard players set @s swappertime 100
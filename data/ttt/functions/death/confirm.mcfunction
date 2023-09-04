#! run as and at the confirming player

#* make the dead players name text visible
data modify entity @e[tag=dead_name_display,tag=!confirmed,limit=1,sort=nearest] text_opacity set value 255

#* print the confirmation message
tellraw @a [{"selector":"@s","color":"gray","bold":true},{"text":" found the body of ","color":"white","bold":false},{"nbt":"text","entity":"@e[tag=dead_name_display,tag=!confirmed,limit=1,sort=nearest]","interpret": true}]

tag @e[tag=head,tag=!confirmed,limit=1,sort=nearest] add confirming

execute as @a[predicate=ttt:any_player] run function ttt:death/check_if_my_body

tag @e[tag=head,tag=!confirmed,limit=1,sort=nearest] remove confirming

#* mark as confirmed
tag @e[tag=dead_name_display,tag=!confirmed,limit=1,sort=nearest] add confirmed
tag @e[tag=head,tag=!confirmed,limit=1,sort=nearest] add confirmed

scoreboard players set @s sneak 0
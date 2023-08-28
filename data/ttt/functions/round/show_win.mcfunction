title @a times 1s 2s 1s
execute if score @e[tag=sign,limit=1] traitorcount matches 0 run title @a title {"text":"Innocents have won!","color":"green"}
execute if score @e[tag=sign,limit=1] innocentcount matches 0 run title @a title {"text":"Traitors have won!","color":"dark_red"}
scoreboard players set @e[tag=sign] roundstage 4

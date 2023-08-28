data modify storage radar Pos.X set from entity @a[team=!traitor,limit=1,sort=nearest] Pos[0]
data modify storage radar Pos.Y set from entity @a[team=!traitor,limit=1,sort=nearest] Pos[1]
data modify storage radar Pos.Z set from entity @a[team=!traitor,limit=1,sort=nearest] Pos[2]
item modify entity @s weapon.mainhand ttt:copypostolodestone

playsound block.note_block.bit player @s ~ ~ ~ .5 2
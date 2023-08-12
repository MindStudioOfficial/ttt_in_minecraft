execute at @e[type=item,nbt={OnGround:1b,Item:{tag:{CustomModelData:1,rifle:1b}}}] run summon armor_stand ~ ~-1.40 ~.4 {Tags:["rifle"],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1,rifle:1b}},{}],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Rotation:[270f],Pose:{RightArm:[225f,0f,90f]},DisabledSlots:4144959}
execute as @e[type=item,nbt={OnGround:1b,Item:{tag:{CustomModelData:1,rifle:1b}}}] run kill @s

execute as @e[type=item,nbt={Item:{tag:{t_key:1b}}}] run kill @s
execute as @e[type=item,nbt={Item:{tag:{t_shop:1b}}}] run kill @s
execute as @e[type=item,nbt={Item:{tag:{boots:1b}}}] run kill @s


execute at @e[type=item,nbt={OnGround: 1b, Item: {tag: {rifle: 1b}}}] run function ttt:weapons/types/summon_item_rifle
execute as @e[type=item,nbt={OnGround: 1b, Item: {tag: {rifle: 1b}}}] run kill @s

execute at @e[type=item,nbt={OnGround: 1b, Item: {tag: {pistol: 1b}}}] run function ttt:weapons/types/summon_item_pistol
execute as @e[type=item,nbt={OnGround: 1b, Item: {tag: {pistol: 1b}}}] run kill @s

execute at @e[type=item,nbt={OnGround: 1b, Item: {tag: {mp5: 1b}}}] run function ttt:weapons/types/summon_item_mp5
execute as @e[type=item,nbt={OnGround: 1b, Item: {tag: {mp5: 1b}}}] run kill @s

execute at @e[type=item,nbt={OnGround: 1b, Item: {tag: {grenade_fire: 1b}}}] run function ttt:weapons/types/grenades/summon_item_nade_fire
execute as @e[type=item,nbt={OnGround: 1b, Item: {tag: {grenade_fire: 1b}}}] run kill @s

execute at @e[type=item,nbt={OnGround: 1b, Item: {tag: {grenade_smoke: 1b}}}] run function ttt:weapons/types/grenades/summon_item_nade_smoke
execute as @e[type=item,nbt={OnGround: 1b, Item: {tag: {grenade_smoke: 1b}}}] run kill @s

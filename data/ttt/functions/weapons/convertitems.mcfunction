
execute at @e[type=item,nbt={OnGround: 1b, Item: {tag: {rifle: 1b}}}] run function ttt:weapons/types/summon_item_rifle
execute as @e[type=item,nbt={OnGround: 1b, Item: {tag: {rifle: 1b}}}] run kill @s

execute at @e[type=item,nbt={OnGround: 1b, Item: {tag: {pistol: 1b}}}] run function ttt:weapons/types/summon_item_pistol
execute as @e[type=item,nbt={OnGround: 1b, Item: {tag: {pistol: 1b}}}] run kill @s

execute at @e[type=item,nbt={OnGround: 1b, Item: {tag: {grenade_fire: 1b}}}] run function ttt:weapons/types/grenades/summon_item_nade_fire
execute as @e[type=item,nbt={OnGround: 1b, Item: {tag: {grenade_fire: 1b}}}] run kill @s

execute at @e[type=item,nbt={OnGround: 1b, Item: {tag: {grenade_smoke: 1b}}}] run function ttt:weapons/types/grenades/summon_item_nade_smoke
execute as @e[type=item,nbt={OnGround: 1b, Item: {tag: {grenade_smoke: 1b}}}] run kill @s

execute as @e[type=item,nbt={Item: {tag: {t_key: 1b}}}] run kill @s
execute as @e[type=item,nbt={Item: {tag: {t_shop: 1b}}}] run kill @s
execute as @e[type=item,nbt={Item: {tag: {boots: 1b}}}] run kill @s
execute as @e[type=item,nbt={Item: {tag: {d_vest: 1b}}}] run kill @s

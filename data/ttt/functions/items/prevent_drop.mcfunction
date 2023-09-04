execute as @e[type=item,nbt={Item: {tag: {NoDrop: 1b}}}] at @s on origin if entity @s[predicate=ttt:alive_player] run data modify entity @e[type=item,nbt={Item: {tag: {NoDrop: 1b}}},limit=1,sort=nearest] Owner set from entity @s UUID
execute as @e[type=item,nbt={Item: {tag: {NoDrop: 1b}}}] run data modify entity @s PickupDelay set value 0s
execute as @e[type=item,nbt={Item: {tag: {NoDrop: 1b}}}] at @s on origin if entity @s[predicate=ttt:alive_player] run tp @e[type=item,nbt={Item: {tag: {NoDrop: 1b}}},limit=1,sort=nearest] @s

execute as @e[type=item] store result score @s itemage run data get entity @s Age
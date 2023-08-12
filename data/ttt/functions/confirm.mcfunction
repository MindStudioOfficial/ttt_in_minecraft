execute as @a[scores={sneak=1..}] at @a[scores={sneak=1..}] unless entity @e[tag=head,distance=..2] run scoreboard players set @s sneak 0

execute at @a[scores={sneak=10..}] run data merge entity @e[tag=head,limit=1,sort=nearest] {CustomNameVisible:1b}
execute at @a[scores={sneak=10..}] as @a[scores={sneak=10..}] run tellraw @a ["",{"selector":"@s","color":"gray","bold":true},{"text":" found the body of ","color":"white","bold":false},{"selector":"@e[tag=head,limit=1,sort=nearest]","color":"none"}]

execute as @a[scores={sneak=1..}] at @a[scores={sneak=1..}] if entity @e[tag=head,distance=..2,nbt={CustomNameVisible:1b}] run scoreboard players set @s sneak 0

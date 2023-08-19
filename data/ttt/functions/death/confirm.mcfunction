execute as @a[scores={sneak=1..},gamemode=!spectator] at @s unless entity @e[tag=head,tag=!confirmed,distance=..2] run scoreboard players set @s sneak 0

execute at @a[scores={sneak=10..},gamemode=!spectator] run data merge entity @e[tag=head,tag=!confirmed,limit=1,sort=nearest] {CustomNameVisible: 1b}
execute as @a[scores={sneak=10..},gamemode=!spectator] at @s run tellraw @a ["",{"selector":"@s","color":"gray","bold":true},{"text":" found the body of ","color":"white","bold":false},{"selector":"@e[tag=head,tag=!confirmed,limit=1,sort=nearest]","color":"none"}]
execute at @a[scores={sneak=10..},gamemode=!spectator] run tag @e[tag=head,limit=1,sort=nearest] add confirmed

execute as @a[scores={sneak=10..}] run scoreboard players set @s sneak 0

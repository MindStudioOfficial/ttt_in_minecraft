scoreboard players set @e[tag=sign] traitorcount 0
execute as @a[team=traitor,gamemode=adventure] run scoreboard players add @e[tag=sign] traitorcount 1

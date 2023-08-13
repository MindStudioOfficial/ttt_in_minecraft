scoreboard players set @e[tag=sign] innocentcount 0
execute as @a[team=innocent,gamemode=adventure] run scoreboard players add @e[tag=sign] innocentcount 1
execute as @a[team=detective,gamemode=adventure] run scoreboard players add @e[tag=sign] innocentcount 1

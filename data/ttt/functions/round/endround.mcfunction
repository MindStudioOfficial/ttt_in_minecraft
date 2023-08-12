#afterroundtime: (def. 20)
scoreboard players set @e[tag=sign] roundtime 20

scoreboard players set @e[tag=sign] rtseconds 0
scoreboard players set @e[tag=sign] rtminutes 0
scoreboard players set @e[tag=sign] i 0

team join roundover @a[team=!admin]

scoreboard players set @e[tag=sign] roundstage 5

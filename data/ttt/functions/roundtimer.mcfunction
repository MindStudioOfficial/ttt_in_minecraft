#*roundstages: -1=pause, 0=start preparing, 1=preparing, 2=start round, 3=running, 4=end round, 5=round over

execute if entity @e[tag=sign,scores={roundstage=0}] run function ttt:round/startpreparing

execute if entity @e[tag=sign,scores={roundstage=1}] run scoreboard players add @e[tag=sign] i 1
execute if entity @e[tag=sign,scores={i=20..,roundstage=1}] run scoreboard players remove @e[tag=sign] roundtime 1
execute if entity @e[tag=sign,scores={i=20..,roundstage=1}] run scoreboard players set @e[tag=sign] i 0
execute if entity @e[tag=sign,scores={roundstage=1,roundtime=..0}] run scoreboard players set @e[tag=sign] roundstage 2

execute if entity @e[tag=sign,scores={roundstage=2}] run function ttt:round/startround

execute if entity @e[tag=sign,scores={roundstage=3}] run scoreboard players add @e[tag=sign] i 1
execute if entity @e[tag=sign,scores={i=20..,roundstage=3}] run scoreboard players remove @e[tag=sign] roundtime 1
execute if entity @e[tag=sign,scores={i=20..,roundstage=3}] run scoreboard players set @e[tag=sign] i 0
execute if entity @e[tag=sign,scores={roundstage=3,roundtime=..0}] run scoreboard players set @e[tag=sign] roundstage 4

execute if entity @e[tag=sign,scores={roundstage=4}] run function ttt:round/endround

execute if entity @e[tag=sign,scores={roundstage=5}] run scoreboard players add @e[tag=sign] i 1
execute if entity @e[tag=sign,scores={i=20..,roundstage=5}] run scoreboard players remove @e[tag=sign] roundtime 1
execute if entity @e[tag=sign,scores={i=20..,roundstage=5}] run scoreboard players set @e[tag=sign] i 0
execute if entity @e[tag=sign,scores={roundstage=5,roundtime=..0}] run scoreboard players set @e[tag=sign] roundstage 0


#execute if score @e[tag=sign,limit=1] playercount matches ..1 run scoreboard players set @e[tag=sign] roundstage -1
#execute if score @e[tag=sign,limit=1] playercount matches 2.. if score @e[tag=sign,limit=1] roundstage matches -1 run scoreboard players set @e[tag=sign] roundstage 0

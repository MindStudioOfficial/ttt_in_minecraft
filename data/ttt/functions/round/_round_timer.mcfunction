#* tick timer if not paused
execute unless entity @e[tag=sign,scores={paused=0..}] run scoreboard players add @e[tag=sign] paused 0
execute if entity @e[tag=sign,scores={paused=0}] run scoreboard players add @e[tag=sign] i 1
execute if entity @e[tag=sign,scores={paused=0,i=20..}] run scoreboard players remove @e[tag=sign] roundtime 1
execute if entity @e[tag=sign,scores={paused=0,i=20..}] run scoreboard players set @e[tag=sign] i 0

#*roundstages: 0=start preparing, 1=preparing, 2=start round, 3=running, 4=end round, 5=round over

#* 0 -> 1
execute if entity @e[tag=sign,scores={roundstage=0}] run function ttt:round/0_preparing_start

execute if entity @e[tag=sign,scores={roundstage=1}] run function ttt:round/1_preparing_tick
#* after preparing time 1 -> 2
execute if entity @e[tag=sign,scores={roundstage=1,roundtime=..0}] run scoreboard players set @e[tag=sign] roundstage 2

#* 2 -> 3
execute if entity @e[tag=sign,scores={roundstage=2}] run function ttt:round/2_round_start

execute if entity @e[tag=sign,scores={roundstage=3}] run function ttt:round/3_round_tick
#* after round time 3 -> 4
execute if entity @e[tag=sign,scores={roundstage=3,roundtime=..0}] run scoreboard players set @e[tag=sign] roundstage 4

#* 4 -> 5
execute if entity @e[tag=sign,scores={roundstage=4}] run function ttt:round/4_round_end

#* after round over time 5 -> 0
execute if entity @e[tag=sign,scores={roundstage=5,roundtime=..0}] run scoreboard players set @e[tag=sign] roundstage 0

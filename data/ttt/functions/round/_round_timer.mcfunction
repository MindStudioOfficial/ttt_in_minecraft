#*roundstages: 0=start preparing, 1=preparing, 2=start round, 3=running, 4=end round, 5=round over

#* 0 -> 1
execute if score stats roundstage matches 0 run function ttt:round/0_preparing_start

execute if score stats roundstage matches 1 run function ttt:round/1_preparing_tick
#* after preparing time 1 -> 2
execute if score stats roundstage matches 1 if score stats roundtime matches ..0 run scoreboard players set stats roundstage 2

#* 2 -> 3
execute if score stats roundstage matches 2 run function ttt:round/2_round_start

execute if score stats roundstage matches 3 run function ttt:round/3_round_tick
#* after round time 3 -> 4
execute if score stats roundstage matches 3 if score stats roundtime matches ..0 run scoreboard players set stats roundstage 4

#* 4 -> 5
execute if score stats roundstage matches 4 run function ttt:round/4_round_end

#* after round over time 5 -> 0
execute if score stats roundstage matches 5 if score stats roundtime matches ..0 run scoreboard players set stats roundstage 0

function ttt:round/rolereveal

#* afterroundtime: (def. 20)
scoreboard players set @e[tag=sign] roundtime 20

function ttt:round/reset_time_display

team join roundover @a[team=!admin]

scoreboard players set @e[tag=sign] roundstage 5

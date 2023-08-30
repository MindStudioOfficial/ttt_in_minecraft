function ttt:round/show_win
function ttt:round/rolereveal
function ttt:round/award_points
function ttt:round/points_show

#* afterroundtime: (def. 20)
scoreboard players set stats roundtime 20

function ttt:round/reset_time_display

team join roundover @a[predicate=ttt:any_player]

scoreboard players set stats roundstage 5

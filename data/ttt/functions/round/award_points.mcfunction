execute if score stats traitorcount matches 0 run scoreboard players add @a[predicate=ttt:in_any_innocent_team] points 5

execute if score stats innocentcount matches 0 run scoreboard players add @a[team=traitor] points 5

execute if score stats innocentcount matches 1.. if score stats traitorcount matches 1.. run scoreboard players add @a[predicate=ttt:in_any_innocent_team] points 5

#* update the displayed points 
execute as @a run scoreboard players operation @s points_display = @s points
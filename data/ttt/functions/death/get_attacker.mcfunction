tag @s add victim

#* i kill i
execute if entity @s[predicate=ttt:in_any_innocent_team] on attacker if entity @s[predicate=ttt:in_any_innocent_team] run scoreboard players remove @s points 1

#* i kill t
execute if entity @s[team=traitor] on attacker if entity @s[predicate=ttt:in_any_innocent_team] run scoreboard players add @s points 1

#* t kill i
execute if entity @s[predicate=ttt:in_any_innocent_team] on attacker if entity @s[team=traitor] run scoreboard players add @s points 1

#* t kill t
execute if entity @s[team=traitor] on attacker if entity @s[team=traitor] run scoreboard players remove @s points 3

tag @s remove victim
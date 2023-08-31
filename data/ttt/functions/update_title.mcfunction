title @a times 0s 1s 0s

scoreboard players operation stats rtseconds = stats roundtime
scoreboard players operation stats rtseconds %= .60 constants
scoreboard players operation stats rtminutes = stats roundtime
scoreboard players operation stats rtminutes /= .60 constants

execute if score stats rtseconds matches ..9 run scoreboard players set stats rtzero 0
execute if score stats rtseconds matches 10.. run scoreboard players reset stats rtzero

execute as @a[team=innocent] run title @s actionbar ["",{"text":"["},{"text":"Innocent","color":"green","bold":true},{"text":"]  "},{"text":"[Ammo: "},{"score":{"name":"@s","objective":"ammo_loaded"},"color":"dark_red"},{"text":"/"},{"score":{"name":"@s","objective":"ammo_mag"},"color":"dark_red"},{"text":"]  "},{"score":{"name":"stats","objective":"rtminutes"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"stats","objective":"rtzero"},"color":"gold"},{"score":{"name":"stats","objective":"rtseconds"},"color":"gold"}]

execute as @a[team=traitor] run title @s actionbar ["",{"text":"["},{"text":"Traitor","bold":true,"color":"dark_red"},{"text":"]  "},{"text":"[Ammo: "},{"score":{"name":"@s","objective":"ammo_loaded"},"color":"dark_red"},{"text":"/"},{"score":{"name":"@s","objective":"ammo_mag"},"color":"dark_red"},{"text":"]  "},{"score":{"name":"stats","objective":"rtminutes"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"stats","objective":"rtzero"},"color":"gold"},{"score":{"name":"stats","objective":"rtseconds"},"color":"gold"},{"text":"     Fellow Traitors: "},{"text":"["},{"selector":"@a[team=traitor]","color":"dark_red"},{"text":"]"}]

execute as @a[team=detective] run title @s actionbar ["",{"text":"["},{"text":"Detective","color":"blue","bold":true},{"text":"]  ","color":"none","bold":false},{"text":"[Ammo: "},{"score":{"name":"@s","objective":"ammo_loaded"},"color":"dark_red"},{"text":"/"},{"score":{"name":"@s","objective":"ammo_mag"},"color":"dark_red"},{"text":"]  "},{"score":{"name":"stats","objective":"rtminutes"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"stats","objective":"rtzero"},"color":"gold"},{"score":{"name":"stats","objective":"rtseconds"},"color":"gold"}]

execute as @a[team=preparing] run title @s actionbar ["",{"text":"["},{"text":"Preparing","color":"white","bold":true},{"text":"]  "},{"text":"[Ammo: "},{"score":{"name":"@s","objective":"ammo_loaded"},"color":"dark_red"},{"text":"/"},{"score":{"name":"@s","objective":"ammo_mag"},"color":"dark_red"},{"text":"]  "},{"score":{"name":"stats","objective":"rtminutes"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"stats","objective":"rtzero"},"color":"gold"},{"score":{"name":"stats","objective":"rtseconds"},"color":"gold"}]

title @a[team=roundover] actionbar ["",{"text":"["},{"text":"Round Over","color":"white","bold":true},{"text":"]          ","color":"none","bold":false},{"score":{"name":"stats","objective":"rtminutes"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"stats","objective":"rtzero"},"color":"gold"},{"score":{"name":"stats","objective":"rtseconds"},"color":"gold"}]

title @a times 0s 1s 0s
execute if score stats paused matches 1.. run title @a title ""
execute if score stats paused matches 1.. run title @a subtitle {"text":"Round Timer Paused","color":"gold","bold":true}

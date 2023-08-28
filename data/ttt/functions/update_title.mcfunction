title @a times 0s 1s 0s

scoreboard players operation @e[tag=sign] rtseconds = @e[tag=sign] roundtime
scoreboard players operation @e[tag=sign] rtseconds %= @e[tag=sign] 60
scoreboard players operation @e[tag=sign] rtminutes = @e[tag=sign] roundtime
scoreboard players operation @e[tag=sign] rtminutes /= @e[tag=sign] 60

execute if entity @e[tag=sign,scores={rtseconds=..9}] run scoreboard players set @e[tag=sign] rtzero 0
execute if entity @e[tag=sign,scores={rtseconds=10..}] run scoreboard players reset @e[tag=sign] rtzero

execute as @a[team=innocent] run title @s actionbar ["",{"text":"["},{"text":"Innocent","color":"green","bold":true},{"text":"]  "},{"text":"[Ammo: "},{"score":{"name":"@s","objective":"currentammo"},"color":"dark_red"},{"text":"/"},{"score":{"name":"@s","objective":"totalammo"},"color":"dark_red"},{"text":"]  "},{"score":{"name":"@e[tag=sign,limit=1]","objective":"rtminutes"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@e[tag=sign,limit=1]","objective":"rtzero"},"color":"gold"},{"score":{"name":"@e[tag=sign,limit=1]","objective":"rtseconds"},"color":"gold"}]
execute as @a[team=traitor] run title @s actionbar ["",{"text":"["},{"text":"Traitor","bold":true,"color":"dark_red"},{"text":"]  "},{"text":"[Ammo: "},{"score":{"name":"@s","objective":"currentammo"},"color":"dark_red"},{"text":"/"},{"score":{"name":"@s","objective":"totalammo"},"color":"dark_red"},{"text":"]  "},{"score":{"name":"@e[tag=sign,limit=1]","objective":"rtminutes"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@e[tag=sign,limit=1]","objective":"rtzero"},"color":"gold"},{"score":{"name":"@e[tag=sign,limit=1]","objective":"rtseconds"},"color":"gold"},{"text":"     Fellow Traitors: "},{"text":"["},{"selector":"@a[team=traitor]","color":"dark_red"},{"text":"]"}]
execute as @a[team=detective] run title @s actionbar ["",{"text":"["},{"text":"Detective","color":"blue","bold":true},{"text":"]  ","color":"none","bold":false},{"text":"[Ammo: "},{"score":{"name":"@s","objective":"currentammo"},"color":"dark_red"},{"text":"/"},{"score":{"name":"@s","objective":"totalammo"},"color":"dark_red"},{"text":"]  "},{"score":{"name":"@e[tag=sign,limit=1]","objective":"rtminutes"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@e[tag=sign,limit=1]","objective":"rtzero"},"color":"gold"},{"score":{"name":"@e[tag=sign,limit=1]","objective":"rtseconds"},"color":"gold"}]
execute as @a[team=preparing] run title @s actionbar ["",{"text":"["},{"text":"Preparing","color":"white","bold":true},{"text":"]  "},{"text":"[Ammo: "},{"score":{"name":"@s","objective":"currentammo"},"color":"dark_red"},{"text":"/"},{"score":{"name":"@s","objective":"totalammo"},"color":"dark_red"},{"text":"]  "},{"score":{"name":"@e[tag=sign,limit=1]","objective":"rtminutes"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@e[tag=sign,limit=1]","objective":"rtzero"},"color":"gold"},{"score":{"name":"@e[tag=sign,limit=1]","objective":"rtseconds"},"color":"gold"}]
title @a[team=roundover] actionbar ["",{"text":"["},{"text":"Round Over","color":"white","bold":true},{"text":"]          ","color":"none","bold":false},{"score":{"name":"@e[tag=sign,limit=1]","objective":"rtminutes"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@e[tag=sign,limit=1]","objective":"rtzero"},"color":"gold"},{"score":{"name":"@e[tag=sign,limit=1]","objective":"rtseconds"},"color":"gold"}]

title @a times 0s 1s 0s
execute if entity @e[tag=sign,scores={paused=1..}] run title @a title ""
execute if entity @e[tag=sign,scores={paused=1..}] run title @a subtitle {"text":"Round Timer Paused","color":"gold","bold":true}

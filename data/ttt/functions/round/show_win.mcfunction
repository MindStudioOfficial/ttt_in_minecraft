title @a times 1s 2s 1s

execute if score stats traitorcount matches 0 run title @a title {"text":"Innocents have won!","color":"green"}
execute if score stats innocentcount matches 0 run title @a title {"text":"Traitors have won!","color":"dark_red"}

execute if score stats innocentcount matches 1.. if score stats traitorcount matches 1.. run title @a title {"text":"Innocents have won!","color":"green"}
execute if score stats innocentcount matches 1.. if score stats traitorcount matches 1.. run title @a subtitle {"text":"The time for the traitors ran out.","color":"green"}


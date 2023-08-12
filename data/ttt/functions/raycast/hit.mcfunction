#summons Cursor1 in the position of Cursor and kills Cursor
#execute at @e[tag=ray] as @e[tag=ray] unless block ~ ~ ~ air run summon armor_stand ~ ~ ~ {Tags:["Cursor1"],NoGravity:1b,Invisible:0b,Marker:1b}
execute at @e[tag=ray] as @e[tag=ray] unless block ~ ~ ~ air run kill @s
execute at @e[tag=ray] as @e[tag=ray] unless entity @a[distance=..100] run kill @s

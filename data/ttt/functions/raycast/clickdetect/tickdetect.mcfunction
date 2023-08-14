execute as @a[scores={click=1..},nbt={SelectedItem: {tag: {rifle: 1b}}}] at @s run function ttt:raycast/clickdetect/rifle
execute as @a[scores={click=1..},nbt={SelectedItem: {tag: {pistol: 1b}}}] at @s run function ttt:raycast/clickdetect/pistol
scoreboard players reset @a[scores={click=1..}] click

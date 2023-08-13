#* give direction tags to tdoor marker
execute as @e[tag=tdoor,tag=!tdoor_n,tag=!tdoor_e,tag=!tdoor_s,tag=!tdoor_w] at @s if block ~ ~ ~ iron_door[facing=north] run tag @s add tdoor_n
execute as @e[tag=tdoor,tag=!tdoor_n,tag=!tdoor_e,tag=!tdoor_s,tag=!tdoor_w] at @s if block ~ ~ ~ iron_door[facing=east] run tag @s add tdoor_e
execute as @e[tag=tdoor,tag=!tdoor_n,tag=!tdoor_e,tag=!tdoor_s,tag=!tdoor_w] at @s if block ~ ~ ~ iron_door[facing=south] run tag @s add tdoor_s
execute as @e[tag=tdoor,tag=!tdoor_n,tag=!tdoor_e,tag=!tdoor_s,tag=!tdoor_w] at @s if block ~ ~ ~ iron_door[facing=west] run tag @s add tdoor_w

#* place fake door display based on direction
    #* N
execute as @e[tag=tdoor_n] at @s unless entity @e[tag=tdoordispl,distance=..1] run summon block_display ~-.5 ~ ~-.5 {Tags: ["tdoordisp_n", "tdoordispl"], block_state: {Name: "minecraft:iron_door", Properties: {facing: "north", half: "lower", hinge: "left", open: "false", powered: "false"}}}
execute as @e[tag=tdoor_n] at @s positioned ~ ~1 ~ unless entity @e[tag=tdoordispu,distance=..1] run summon block_display ~-.5 ~ ~-.5 {Tags: ["tdoordisp_n", "tdoordispu"], block_state: {Name: "minecraft:iron_door", Properties: {facing: "north", half: "upper", hinge: "left", open: "false", powered: "false"}}}
    #* E
execute as @e[tag=tdoor_e] at @s unless entity @e[tag=tdoordispl,distance=..1] run summon block_display ~-.5 ~ ~-.5 {Tags: ["tdoordisp_n", "tdoordispl"], block_state: {Name: "minecraft:iron_door", Properties: {facing: "east", half: "lower", hinge: "left", open: "false", powered: "false"}}}
execute as @e[tag=tdoor_e] at @s positioned ~ ~1 ~ unless entity @e[tag=tdoordispu,distance=..1] run summon block_display ~-.5 ~ ~-.5 {Tags: ["tdoordisp_n", "tdoordispu"], block_state: {Name: "minecraft:iron_door", Properties: {facing: "east", half: "upper", hinge: "left", open: "false", powered: "false"}}}
    #* S
execute as @e[tag=tdoor_s] at @s unless entity @e[tag=tdoordispl,distance=..1] run summon block_display ~-.5 ~ ~-.5 {Tags: ["tdoordisp_n", "tdoordispl"], block_state: {Name: "minecraft:iron_door", Properties: {facing: "south", half: "lower", hinge: "left", open: "false", powered: "false"}}}
execute as @e[tag=tdoor_s] at @s positioned ~ ~1 ~ unless entity @e[tag=tdoordispu,distance=..1] run summon block_display ~-.5 ~ ~-.5 {Tags: ["tdoordisp_n", "tdoordispu"], block_state: {Name: "minecraft:iron_door", Properties: {facing: "south", half: "upper", hinge: "left", open: "false", powered: "false"}}}
    #* W
execute as @e[tag=tdoor_w] at @s unless entity @e[tag=tdoordispl,distance=..1] run summon block_display ~-.5 ~ ~-.5 {Tags: ["tdoordisp_n", "tdoordispl"], block_state: {Name: "minecraft:iron_door", Properties: {facing: "west", half: "lower", hinge: "left", open: "false", powered: "false"}}}
execute as @e[tag=tdoor_w] at @s positioned ~ ~1 ~ unless entity @e[tag=tdoordispu,distance=..1] run summon block_display ~-.5 ~ ~-.5 {Tags: ["tdoordisp_n", "tdoordispu"], block_state: {Name: "minecraft:iron_door", Properties: {facing: "west", half: "upper", hinge: "left", open: "false", powered: "false"}}}


#* place air if key present
execute as @e[tag=tdoor] at @s if entity @a[nbt={SelectedItem: {tag: {t_key: 1b}}},distance=..2] unless block ~ ~ ~ air run fill ~ ~ ~ ~ ~1 ~ air

#* place barrier if no key present
execute as @e[tag=tdoor] at @s unless entity @a[nbt={SelectedItem: {tag: {t_key: 1b}}},distance=..2] unless block ~ ~ ~ barrier run fill ~ ~ ~ ~ ~1 ~ barrier

execute as @e[tag=tdoordispl] at @s unless entity @e[tag=tdoor,distance=..1] run kill @s
execute as @e[tag=tdoordispu] at @s positioned ~ ~-1 ~ unless entity @e[tag=tdoor,distance=..1] run kill @s
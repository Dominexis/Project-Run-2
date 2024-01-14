execute as @e[type=minecraft:marker,tag=cygnus_purple] at @s if score $cygnus_switch_state cygnus_data matches 1 run kill @e[type=minecraft:item_display,tag=cygnus_purple_display]
execute as @e[type=minecraft:marker,tag=cygnus_purple] at @s if score $cygnus_switch_state cygnus_data matches 1 run setblock ~ ~ ~ minecraft:purple_concrete
execute as @e[type=minecraft:marker,tag=cygnus_purple] at @s if score $cygnus_switch_state cygnus_data matches 0 run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:marker,tag=cygnus_purple] at @s if score $cygnus_switch_state cygnus_data matches 0 run summon minecraft:item_display ~ ~0.5 ~ {item:{id:"minecraft:phantom_membrane",tag:{CustomModelData:757001},Count:1b},Tags:["cygnus_entity","cygnus_purple_display"]}

execute as @e[type=minecraft:marker,tag=cygnus_yellow] at @s if score $cygnus_switch_state cygnus_data matches 0 run kill @e[type=minecraft:item_display,tag=cygnus_yellow_display]
execute as @e[type=minecraft:marker,tag=cygnus_yellow] at @s if score $cygnus_switch_state cygnus_data matches 0 run setblock ~ ~ ~ minecraft:yellow_concrete
execute as @e[type=minecraft:marker,tag=cygnus_yellow] at @s if score $cygnus_switch_state cygnus_data matches 1 run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:marker,tag=cygnus_yellow] at @s if score $cygnus_switch_state cygnus_data matches 1 run summon minecraft:item_display ~ ~0.5 ~ {item:{id:"minecraft:phantom_membrane",tag:{CustomModelData:757000},Count:1b},Tags:["cygnus_entity","cygnus_yellow_display"]}
return 1
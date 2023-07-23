execute as @e[type=marker,tag=cygnus_purple] at @s if score $cygnus_switch_state cygnus_data matches 1 run kill @e[type=item_display,tag=cygnus_purple_display]
execute as @e[type=marker,tag=cygnus_purple] at @s if score $cygnus_switch_state cygnus_data matches 1 run setblock ~ ~ ~ purple_concrete
execute as @e[type=marker,tag=cygnus_purple] at @s if score $cygnus_switch_state cygnus_data matches 0 run setblock ~ ~ ~ air
execute as @e[type=marker,tag=cygnus_purple] at @s if score $cygnus_switch_state cygnus_data matches 0 run summon item_display ~ ~0.5 ~ {item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:757001}},Tags:["cygnus_entity","cygnus_purple_display"]}

execute as @e[type=marker,tag=cygnus_yellow] at @s if score $cygnus_switch_state cygnus_data matches 0 run kill @e[type=item_display,tag=cygnus_yellow_display]
execute as @e[type=marker,tag=cygnus_yellow] at @s if score $cygnus_switch_state cygnus_data matches 0 run setblock ~ ~ ~ yellow_concrete
execute as @e[type=marker,tag=cygnus_yellow] at @s if score $cygnus_switch_state cygnus_data matches 1 run setblock ~ ~ ~ air
execute as @e[type=marker,tag=cygnus_yellow] at @s if score $cygnus_switch_state cygnus_data matches 1 run summon item_display ~ ~0.5 ~ {item:{id:"minecraft:phantom_membrane",Count:1b,tag:{CustomModelData:757000}},Tags:["cygnus_entity","cygnus_yellow_display"]}
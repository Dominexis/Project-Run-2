# Increment timer

scoreboard players add #door_timer pr.value 1







# Break pedestal

execute if score #door_timer pr.value matches 20 run setblock -49 0 40 minecraft:air destroy
execute if score #door_timer pr.value matches 20 positioned -49 0 40 run kill @e[type=minecraft:item,distance=..1]
execute if score #door_timer pr.value matches 20 run kill @e[type=minecraft:text_display,tag=pr.door_button]
execute if score #door_timer pr.value matches 20 run kill @e[type=minecraft:item_display,tag=pr.door_button]







# Count down
 
execute if score #door_timer pr.value matches 40 positioned -49 0 40 run playsound minecraft:block.note_block.pling master @a[distance=..40] ~ ~ ~ 10 1
execute if score #door_timer pr.value matches 40 positioned -49 0 40 run tellraw @a[distance=..40] {"text":"3","color":"green","type":"text"}
execute if score #door_timer pr.value matches 40 run data merge entity @e[type=minecraft:text_display,tag=pr.door_title,limit=1] {text:'{"text":"3","color":"green","type":"text"}'}

execute if score #door_timer pr.value matches 60 positioned -49 0 40 run playsound minecraft:block.note_block.pling master @a[distance=..40] ~ ~ ~ 10 1.3
execute if score #door_timer pr.value matches 60 positioned -49 0 40 run tellraw @a[distance=..40] {"text":"2","color":"yellow","type":"text"}
execute if score #door_timer pr.value matches 60 run data merge entity @e[type=minecraft:text_display,tag=pr.door_title,limit=1] {text:'{"text":"2","color":"yellow","type":"text"}'}

execute if score #door_timer pr.value matches 80 positioned -49 0 40 run playsound minecraft:block.note_block.pling master @a[distance=..40] ~ ~ ~ 10 1.6
execute if score #door_timer pr.value matches 80 positioned -49 0 40 run tellraw @a[distance=..40] {"text":"1","color":"gold","type":"text"}
execute if score #door_timer pr.value matches 80 run data merge entity @e[type=minecraft:text_display,tag=pr.door_title,limit=1] {text:'{"text":"1","color":"gold","type":"text"}'}


execute if score #door_timer pr.value matches 100 positioned -32 0 40 run playsound minecraft:entity.generic.explode master @a[distance=..40] ~ ~ ~ 10 0.82
execute if score #door_timer pr.value matches 100 positioned -32 0 40 run playsound minecraft:entity.zombie_villager.cure master @a[distance=..40] ~ ~ ~ 10 1.73
execute if score #door_timer pr.value matches 100 positioned -32 0 40 run playsound minecraft:entity.zombie.break_wooden_door master @a[distance=..40] ~ ~ ~ 10 0.88
execute if score #door_timer pr.value matches 100 run particle minecraft:explosion_emitter -32 4 40 0 2 2 0 20
execute if score #door_timer pr.value matches 100 run kill @e[type=minecraft:text_display,tag=pr.door_title]
execute if score #door_timer pr.value matches 100 positioned -49 0 40 run tellraw @a[distance=..40] {"text":"Go!","color":"gold","type":"text"}
execute if score #door_timer pr.value matches 102 run clone -87 -14 19 -81 -5 27 -33 0 36

execute if score #door_timer pr.value matches 102.. run scoreboard players set #door_timer pr.value 0
return 1
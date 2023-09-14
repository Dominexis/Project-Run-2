# This function will run every tick while players are in your plot on the center block at Y=0
# execute as @a[tag=pr.target] at @s if block ~ ~ ~ minecraft:light_weighted_pressure_plate run function pr:player/checkpoint/mark

item replace entity @a[tag=pr.target] hotbar.8 with golden_helmet{display:{Name:'{"text":"Checkpoint","color":"gold","bold":true,"italic":false}'}} 1
execute as @a[tag=pr.target,predicate=intjungle:checkpoint] run trigger checkpoint
execute as @a[tag=pr.target] store result score @s interstellar.item_count run clear @s golden_helmet 0
clear @a[tag=pr.target,scores={interstellar.item_count=2..}] golden_helmet

kill @e[type=minecraft:item,tag=pr.target]

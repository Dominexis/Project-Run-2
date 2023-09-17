scoreboard players add @s inquognito.clearance.bounce_pad_room 1

tellraw @s [{"text":"Experiment Z-58 Vault Switches Activated: ","color":"green"},{"score":{"name":"@s","objective":"inquognito.clearance.bounce_pad_room"},"color":"yellow"},{"text":"/4","color":"gold"}]

execute if score @s inquognito.clearance.bounce_pad_room matches 1 run function inquognito:logic/clearance/bounce_pad_room/1
execute if score @s inquognito.clearance.bounce_pad_room matches 4.. run function inquognito:logic/clearance/bounce_pad_room/4

playsound minecraft:ui.button.click player @s

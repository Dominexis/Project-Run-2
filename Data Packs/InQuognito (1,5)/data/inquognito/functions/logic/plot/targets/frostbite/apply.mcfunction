scoreboard players add @s inquognito.clearance.frostbite 1

tellraw @s [{"text":"Purple Sector Switches Activated: ","color":"green"},{"score":{"name":"@s","objective":"inquognito.clearance.frostbite"},"color":"yellow"},{"text":"/3","color":"gold"}]

execute if score @s inquognito.clearance.frostbite matches 1 run function inquognito:logic/clearance/frostbite/1
execute if score @s inquognito.clearance.frostbite matches 3.. run function inquognito:logic/clearance/frostbite/3

playsound minecraft:ui.button.click player @s

scoreboard players add @s inquognito.clearance.office 1

execute if entity @s[tag=!inquognito.target.office] run function inquognito:logic/clearance/office/1

execute if score @s inquognito.clearance.office matches 3.. run function inquognito:logic/clearance/office/3

playsound minecraft:ui.button.click player @s

scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"??? | ","color":"light_purple"},{"text":"Can you feel it?","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=120}] [{"text":"??? | ","color":"light_purple"},{"text":"Infesting your body like a disease, growing.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=180}] [{"text":"??? | ","color":"light_purple"},{"text":"Do you understand your place now? I OWN YOU!","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=240}] [{"text":"??? | ","color":"light_purple"},{"text":"I will watch as your body destroys you from the inside.","color":"white"}]

execute if score @s inquognito.transmission.tick matches 180 run scoreboard players remove @s inquognito.health 2
execute if score @s inquognito.transmission.tick matches 180 run effect give @s minecraft:wither 5 2 true
execute if score @s inquognito.transmission.tick matches 180 run scoreboard players operation @s inquognito.energy /= #2 pr.value

execute if score @s inquognito.transmission.tick matches 180.. run function inquognito:logic/transmissions/end

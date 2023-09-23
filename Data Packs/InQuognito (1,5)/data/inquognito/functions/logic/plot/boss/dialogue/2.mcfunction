scoreboard players add @s inquognito.dialogue.tick 1

tellraw @s[scores={inquognito.dialogue.tick=60}] [{"text":"??? | ","color":"light_purple"},{"text":"Can you feel it?","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=120}] [{"text":"??? | ","color":"light_purple"},{"text":"Infesting your body like a disease, growing.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=180}] [{"text":"??? | ","color":"light_purple"},{"text":"The power I granted you, I can take away.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=240}] [{"text":"??? | ","color":"light_purple"},{"text":"I will watch as your body destroys you from the inside.","color":"white"}]

execute if score @s inquognito.dialogue.tick matches 180 run scoreboard players remove @s inquognito.health 2
execute if score @s inquognito.dialogue.tick matches 180 run effect give @s minecraft:wither 1 2 true
execute if score @s inquognito.dialogue.tick matches 180 run scoreboard players operation @s inquognito.energy /= #2 pr.value

execute if score @s inquognito.dialogue.tick matches 240.. run function inquognito:logic/plot/boss/dialogue/reset

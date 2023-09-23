scoreboard players add @s inquognito.dialogue.tick 1

tellraw @s[scores={inquognito.dialogue.tick=1}] [{"text":"Simaris | ","color":"aqua"},{"text":"Hunter. Excellent job today.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=60}] [{"text":"Simaris | ","color":"aqua"},{"text":"Although much remains unknown, the creature inhabiting the facility seems to have perished under the rubble.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=120}] [{"text":"Simaris | ","color":"aqua"},{"text":"The federation thanks you for a job well done.","color":"white"}]

execute if score @s inquognito.dialogue.tick matches 180.. run function inquognito:logic/end

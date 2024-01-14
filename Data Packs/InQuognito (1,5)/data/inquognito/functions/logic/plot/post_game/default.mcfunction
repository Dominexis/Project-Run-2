scoreboard players add @s inquognito.dialogue.tick 1

tellraw @s[scores={inquognito.dialogue.tick=60}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Hunter. Excellent job today.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=120}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Although much remains unknown, the creature inhabiting the facility seems to have perished under the rubble.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=180}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"The federation thanks you for a job well done.","color":"white","type":"text"}]

execute if score @s inquognito.dialogue.tick matches 240.. run function inquognito:logic/end

return 1
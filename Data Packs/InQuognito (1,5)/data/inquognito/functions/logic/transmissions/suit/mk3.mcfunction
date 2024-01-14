scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=1}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"--e you there? Hunter, I lost contact momentarily. What happened?","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"It appears an unknown substance has merged with your suit.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=120}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"I cannot yet determine the full effects of this.","color":"white","type":"text"}]

execute if score @s inquognito.transmission.tick matches 120.. run function inquognito:logic/transmissions/end

return 1
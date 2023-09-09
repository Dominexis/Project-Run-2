scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=1}] [{"text":"Simaris | ","color":"aqua"},{"text":"--e you there? Hunter, I lost contact momentarily. What happened?","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"Simaris | ","color":"aqua"},{"text":"It appears an unknown substance has merged with your suit.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=120}] [{"text":"Simaris | ","color":"aqua"},{"text":"I cannot yet determine the full effects of this.","color":"white"}]

execute if score @s inquognito.transmission.tick matches 120.. run function inquognito:logic/transmissions/end

scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=1}] [{"text":"Simaris | ","color":"aqua"},{"text":"Hunter, the switches you activated appears to have opened the sub-zero containment barrier.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"Simaris | ","color":"aqua"},{"text":"Go investigate as soon as you can.","color":"white"}]

execute if score @s inquognito.transmission.tick matches 60.. run function inquognito:logic/transmissions/end

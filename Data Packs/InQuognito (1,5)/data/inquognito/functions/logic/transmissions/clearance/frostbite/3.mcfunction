scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=1}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Hunter, the switches you activated appears to have opened the sub-zero containment barrier.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Go investigate as soon as you can.","color":"white","type":"text"}]

execute if score @s inquognito.transmission.tick matches 60.. run function inquognito:logic/transmissions/end

return 1
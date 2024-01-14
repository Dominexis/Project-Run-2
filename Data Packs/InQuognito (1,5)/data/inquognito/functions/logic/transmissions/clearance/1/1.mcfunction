scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=1}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Hunter. The object you just picked up appears to be some kind of personnel clearance badge.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"However, the data appears too corrupted to be of use alone.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=120}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Continue looking around and see if you can find any more.","color":"white","type":"text"}]

execute if score @s inquognito.transmission.tick matches 120.. run function inquognito:logic/transmissions/end

return 1
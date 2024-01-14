scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=1}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Hunter, the switches in this room appear to be on a timer.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"It seems like you must activate all three in quick succession.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=120}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Is there any way you can fire faster or more beams at once?","color":"white","type":"text"}]

execute if score @s inquognito.transmission.tick matches 120.. run function inquognito:logic/transmissions/end

return 1
scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=1}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Excellent job, Hunter. My scans indicate that the augment you have just acquired has freezing properties.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Repeated shots will slow enemies and cause damage over time.","color":"white","type":"text"}]

execute if score @s inquognito.transmission.tick matches 60.. run function inquognito:logic/transmissions/end

return 1
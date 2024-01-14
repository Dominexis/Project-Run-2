scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=1}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Hunter, the card you collected appears to have opened the barrier leading out of this area.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"You should now be able to leave this sewer.","color":"white","type":"text"}]

execute if score @s inquognito.transmission.tick matches 60.. run function inquognito:logic/transmissions/end

return 1
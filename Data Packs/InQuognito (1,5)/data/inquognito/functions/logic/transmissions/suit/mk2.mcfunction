scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=1}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Great job, Hunter. It appears you have found a new suit.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"My scans indicate that it is composed of a superior alloy that will increase your defense.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=120}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"More significantly, the thrusters should enable you to double jump by pressing the sneak key in midair.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=180}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"It will surely allow you to reach areas previously inaccessible.","color":"white","type":"text"}]

execute if score @s inquognito.transmission.tick matches 180.. run function inquognito:logic/transmissions/end

return 1
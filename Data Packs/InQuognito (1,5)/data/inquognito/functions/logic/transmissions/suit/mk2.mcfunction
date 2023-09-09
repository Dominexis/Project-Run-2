scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=1}] [{"text":"Simaris | ","color":"aqua"},{"text":"Great job, Hunter. It appears you have found a new suit.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"Simaris | ","color":"aqua"},{"text":"My scans indicate that it is composed of a superior alloy that will increase your defense.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=120}] [{"text":"Simaris | ","color":"aqua"},{"text":"More significantly, the thrusters should enable you to double jump by pressing the sneak key in midair.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=180}] [{"text":"Simaris | ","color":"aqua"},{"text":"It will surely allow you to reach areas previously inaccessible.","color":"white"}]

execute if score @s inquognito.transmission.tick matches 180.. run function inquognito:logic/transmissions/end

scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=1}] [{"text":"Simaris | ","color":"aqua"},{"text":"Great job, Hunter. My scans indicate that the augment you have just acquired causes explosions wherever fired projectiles land.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"Simaris | ","color":"aqua"},{"text":"These explosions will damage nearby enemies as well.","color":"white"}]

execute if score @s inquognito.transmission.tick matches 60.. run function inquognito:logic/transmissions/end

scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=1}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Great job, Hunter. My scans indicate that the augment you have just acquired adds an alternate fire to your weapon.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"By dropping the Varia Beam, it will lob a grenade that deals heavy damage to all nearby enemies.","color":"white","type":"text"}]

execute if score @s inquognito.transmission.tick matches 60.. run function inquognito:logic/transmissions/end

return 1
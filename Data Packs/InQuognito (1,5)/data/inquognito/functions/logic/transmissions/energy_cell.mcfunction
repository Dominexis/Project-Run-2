scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=1}] [{"text":"Simaris | ","color":"aqua"},{"text":"Hunter. The energy cell you acquired seems to have been absorbed by the substance attached to your suit.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"Simaris | ","color":"aqua"},{"text":"I believe this may be helpful to you in some way.","color":"white"}]

execute if score @s inquognito.transmission.tick matches 60.. run function inquognito:logic/transmissions/end

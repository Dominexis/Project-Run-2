scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"??? | ","color":"light_purple"},{"text":"It is no matter.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=120}] [{"text":"??? | ","color":"light_purple"},{"text":"What I require from you, I will take by force.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=180}] [{"text":"??? | ","color":"light_purple"},{"text":"For far too long you have been reliant on the guidance of others.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=240}] [{"text":"??? | ","color":"light_purple"},{"text":"But how well can you stand on your own?","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=300}] [{"text":"??? | ","color":"light_purple"},{"text":"Do you feel your vision fading? My influence runs deeper.","color":"white"}]

execute if score @s inquognito.transmission.tick matches 300 run scoreboard players remove @s inquognito.health 2
execute if score @s inquognito.transmission.tick matches 300 run effect give @s minecraft:wither 5 2 true
execute if score @s inquognito.transmission.tick matches 300 run tag @s add inquognito.boss.darkness

execute if score @s inquognito.transmission.tick matches 300.. run function inquognito:logic/transmissions/end

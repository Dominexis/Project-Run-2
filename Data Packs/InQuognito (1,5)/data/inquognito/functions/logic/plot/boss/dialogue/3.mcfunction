scoreboard players add @s inquognito.dialogue.tick 1

tellraw @s[scores={inquognito.dialogue.tick=60}] [{"text":"??? | ","color":"light_purple"},{"text":"...You stubborn creature.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=120}] [{"text":"??? | ","color":"light_purple"},{"text":"It is no matter.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=180}] [{"text":"??? | ","color":"light_purple"},{"text":"What I require, I will take from you by force.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=240}] [{"text":"??? | ","color":"light_purple"},{"text":"Do you feel it?","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=300}] [{"text":"??? | ","color":"light_purple"},{"text":"Your vision fading? My influence runs deeper.","color":"white"}]

execute if score @s inquognito.dialogue.tick matches 240 run scoreboard players remove @s inquognito.health 2
execute if score @s inquognito.dialogue.tick matches 240 run effect give @s minecraft:wither 1 2 true
execute if score @s inquognito.dialogue.tick matches 240 run tag @s add inquognito.boss.darkness

execute if score @s inquognito.dialogue.tick matches 440 run tag @s add inquognito.boss.darkness_particles

tellraw @s[scores={inquognito.dialogue.tick=540}] [{"text":"??? | ","color":"light_purple"},{"text":"How are you still standing? What's happening??","color":"white"}]

execute if score @s inquognito.dialogue.tick matches 540.. run function inquognito:logic/plot/boss/dialogue/reset

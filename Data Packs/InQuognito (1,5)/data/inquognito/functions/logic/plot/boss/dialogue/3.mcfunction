scoreboard players add @s inquognito.dialogue.tick 1

tellraw @s[scores={inquognito.dialogue.tick=60}] [{"text":"??? | ","color":"light_purple","type":"text"},{"text":"...You stubborn creature.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=120}] [{"text":"??? | ","color":"light_purple","type":"text"},{"text":"It is no matter.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=180}] [{"text":"??? | ","color":"light_purple","type":"text"},{"text":"What I require, I will take from you by force.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=240}] [{"text":"??? | ","color":"light_purple","type":"text"},{"text":"Do you feel it?","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=300}] [{"text":"??? | ","color":"light_purple","type":"text"},{"text":"Your vision fading? My influence runs deeper.","color":"white","type":"text"}]

execute if score @s inquognito.dialogue.tick matches 240 run scoreboard players remove @s inquognito.health 2
execute if score @s inquognito.dialogue.tick matches 240 run effect give @s minecraft:wither 1 2 true
execute if score @s inquognito.dialogue.tick matches 240 run tag @s add inquognito.boss.darkness

execute if score @s inquognito.dialogue.tick matches 340 run tag @s add inquognito.boss.darkness_particles

tellraw @s[scores={inquognito.dialogue.tick=440}] [{"text":"??? | ","color":"light_purple","type":"text"},{"text":"How are you still standing? What's happening??","color":"white","type":"text"}]

execute if score @s inquognito.dialogue.tick matches 440.. run function inquognito:logic/plot/boss/dialogue/reset

return 1
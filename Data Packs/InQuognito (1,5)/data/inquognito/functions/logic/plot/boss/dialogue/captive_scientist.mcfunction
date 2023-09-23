scoreboard players add @s inquognito.dialogue.tick 1

tellraw @s[scores={inquognito.dialogue.tick=60}] [{"text":"Scientist | ","color":"yellow"},{"text":"Could it really be..?","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=120}] [{"text":"Scientist | ","color":"yellow"},{"text":"My distress beacon... you heard it...","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=180}] [{"text":"Scientist | ","color":"yellow"},{"text":"Please... that thing is... a monster...","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=240}] [{"text":"Scientist | ","color":"yellow"},{"text":"Of... our own making.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=300}] [{"text":"Scientist | ","color":"yellow"},{"text":"It knows nothing but consume and grow.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=360}] [{"text":"Scientist | ","color":"yellow"},{"text":"We thought we could contain it...","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=420}] [{"text":"Scientist | ","color":"yellow"},{"text":"But we knew nothing... could do nothing.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=480}] [{"text":"Scientist | ","color":"yellow"},{"text":"However... we found its one weakness... sound.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=540}] [{"text":"Scientist | ","color":"yellow"},{"text":"We placed sonic charges down here as contingency, but...","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=600}] [{"text":"Scientist | ","color":"yellow"},{"text":"It has left them guarded.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=660}] [{"text":"Scientist | ","color":"yellow"},{"text":"Bounty Hunter... you know what to do. Please. Avenge us.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=860}] [{"text":"??? | ","color":"light_purple"},{"text":"Hello, Hunter.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=920}] [{"text":"??? | ","color":"light_purple"},{"text":"Did you come all this way to die by my hand?","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=980}] [{"text":"??? | ","color":"light_purple"},{"text":"I'm honored.","color":"white"}]

execute if score @s inquognito.dialogue.tick matches 980.. run function inquognito:logic/plot/boss/dialogue/reset

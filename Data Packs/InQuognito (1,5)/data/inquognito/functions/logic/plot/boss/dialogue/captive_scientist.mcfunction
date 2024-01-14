scoreboard players add @s inquognito.dialogue.tick 1

tellraw @s[scores={inquognito.dialogue.tick=60}] [{"text":"Scientist | ","color":"yellow","type":"text"},{"text":"Could it really be..?","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=120}] [{"text":"Scientist | ","color":"yellow","type":"text"},{"text":"My distress beacon... you heard it...","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=180}] [{"text":"Scientist | ","color":"yellow","type":"text"},{"text":"Please... that thing is... a monster...","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=240}] [{"text":"Scientist | ","color":"yellow","type":"text"},{"text":"Of... our own making.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=300}] [{"text":"Scientist | ","color":"yellow","type":"text"},{"text":"It knows nothing but consume and grow.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=360}] [{"text":"Scientist | ","color":"yellow","type":"text"},{"text":"We thought we could contain it...","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=420}] [{"text":"Scientist | ","color":"yellow","type":"text"},{"text":"But we knew nothing... could do nothing.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=480}] [{"text":"Scientist | ","color":"yellow","type":"text"},{"text":"However... we found its one weakness... sound.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=540}] [{"text":"Scientist | ","color":"yellow","type":"text"},{"text":"We placed sonic charges down here as contingency, but...","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=600}] [{"text":"Scientist | ","color":"yellow","type":"text"},{"text":"It has left them guarded.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=660}] [{"text":"Scientist | ","color":"yellow","type":"text"},{"text":"Bounty Hunter... you know what to do. Please. Avenge us.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=860}] [{"text":"??? | ","color":"light_purple","type":"text"},{"text":"Hello, Hunter.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=920}] [{"text":"??? | ","color":"light_purple","type":"text"},{"text":"Did you come all this way to die by my hand?","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=980}] [{"text":"??? | ","color":"light_purple","type":"text"},{"text":"I'm honored.","color":"white","type":"text"}]

execute if score @s inquognito.dialogue.tick matches 980.. run function inquognito:logic/plot/boss/dialogue/reset

return 1
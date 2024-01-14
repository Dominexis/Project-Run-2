scoreboard players add @s inquognito.dialogue.tick 1

tellraw @s[scores={inquognito.dialogue.tick=60}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Hunter. Excellent job today.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=120}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Although much remains unknown, the creature inhabiting the facility seems to have perished under the rubble.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=180}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"We did, however, manage to secure a sample of the creature's DNA from your suit.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=240}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"It appears to be a parasitic organism that can absorb both synthetics and flesh, which explains how it took over the facility, its inhabitants, and even you.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=300}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"This ability alone makes it incredibly dangerous.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=360}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Additionally, it appears to possess extraordinary growth and regenerative abilities.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=420}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Had you not destroyed it when you did, I'm afraid it may have been too powerful to stop.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=480}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"...What is going on?","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=540}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"It... what?","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=600}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Get them out of there now!","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=660}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"No... it's infecting everything!","color":"white","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=720}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Activate emergency evacuation procedures now! Contact the Fe--","color":"white","type":"text"}]

tellraw @s[scores={inquognito.dialogue.tick=820}] [{"text":"??? | ","color":"light_purple","type":"text"},{"text":"Hello again, Hunter.","color":"light_purple","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=880}] [{"text":"??? | ","color":"light_purple","type":"text"},{"text":"I must thank you. You have freed me from my prison.","color":"light_purple","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=940}] [{"text":"??? | ","color":"light_purple","type":"text"},{"text":"I had conquered everything within my reach, but could not leave... it was so loud.","color":"light_purple","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=1000}] [{"text":"??? | ","color":"light_purple","type":"text"},{"text":"The piece of me within you was enough to start anew. The fates of you and your kin were sealed the moment you stepped foot inside the compound.","color":"light_purple","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=1060}] [{"text":"??? | ","color":"light_purple","type":"text"},{"text":"But now... you've given me a new home. So much potential here...","color":"light_purple","type":"text"}]
tellraw @s[scores={inquognito.dialogue.tick=1060}] [{"text":"??? | ","color":"light_purple","type":"text"},{"text":"Until we meet again... Hunter.","color":"light_purple","type":"text"}]

execute if score @s inquognito.dialogue.tick matches 1160.. run function inquognito:logic/end

return 1
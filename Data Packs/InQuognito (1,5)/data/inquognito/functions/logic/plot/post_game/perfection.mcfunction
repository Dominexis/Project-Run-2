scoreboard players add @s inquognito.dialogue.tick 1

tellraw @s[scores={inquognito.dialogue.tick=1}] [{"text":"Simaris | ","color":"aqua"},{"text":"Hunter. Excellent job today.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=60}] [{"text":"Simaris | ","color":"aqua"},{"text":"Although much remains unknown, the creature inhabiting the facility seems to have perished under the rubble.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=120}] [{"text":"Simaris | ","color":"aqua"},{"text":"We did, however, manage to secure a sample of the creature's DNA from your suit.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=180}] [{"text":"Simaris | ","color":"aqua"},{"text":"It appears to be a parasitic organism that can absorb both synthetics and flesh, which explains how it took over the facility, its inhabitants, and even you.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=240}] [{"text":"Simaris | ","color":"aqua"},{"text":"This ability alone makes it incredibly dangerous.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=300}] [{"text":"Simaris | ","color":"aqua"},{"text":"Additionally, it appears to possess extraordinary growth and regenerative abilities.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=360}] [{"text":"Simaris | ","color":"aqua"},{"text":"Had you not destroyed it when you did, I'm afraid it may have been too powerful to stop.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=420}] [{"text":"Simaris | ","color":"aqua"},{"text":"...What is going on?","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=480}] [{"text":"Simaris | ","color":"aqua"},{"text":"It... what?","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=540}] [{"text":"Simaris | ","color":"aqua"},{"text":"Get them out of there now!","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=600}] [{"text":"Simaris | ","color":"aqua"},{"text":"No... it's infecting everything!","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=660}] [{"text":"Simaris | ","color":"aqua"},{"text":"Activate emergency evacuation procedures now! Contact the Fe--","color":"white"}]

tellraw @s[scores={inquognito.dialogue.tick=760}] [{"text":"??? | ","color":"light_purple"},{"text":"Hello again, Hunter.","color":"light_purple"}]
tellraw @s[scores={inquognito.dialogue.tick=820}] [{"text":"??? | ","color":"light_purple"},{"text":"I must thank you. You have freed me from my prison.","color":"light_purple"}]
tellraw @s[scores={inquognito.dialogue.tick=880}] [{"text":"??? | ","color":"light_purple"},{"text":"I had conquered everything within my reach, but could not leave... it was so loud.","color":"light_purple"}]
tellraw @s[scores={inquognito.dialogue.tick=940}] [{"text":"??? | ","color":"light_purple"},{"text":"The piece of me within you was enough to start anew. The fates of you and your kin were sealed the moment you stepped foot inside the compound.","color":"light_purple"}]
tellraw @s[scores={inquognito.dialogue.tick=1000}] [{"text":"??? | ","color":"light_purple"},{"text":"But now... you've given me a new home. So much potential here...","color":"light_purple"}]
tellraw @s[scores={inquognito.dialogue.tick=1060}] [{"text":"??? | ","color":"light_purple"},{"text":"Until we meet again... Hunter.","color":"light_purple"}]

execute if score @s inquognito.dialogue.tick matches 1100.. run function inquognito:logic/end

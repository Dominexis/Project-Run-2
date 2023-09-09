scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=1}] [{"text":"Simaris | ","color":"aqua"},{"text":"Hunter. Excellent job today.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"Simaris | ","color":"aqua"},{"text":"Although much remains unknown, the creature inhabiting the facility seems to have disappeared thanks to your efforts.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=120}] [{"text":"Simaris | ","color":"aqua"},{"text":"We did, however, manage to secure a sample of the creature's DNA.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=240}] [{"text":"Simaris | ","color":"aqua"},{"text":"It appears to be a parasitic organism that can absorb both synthetics and flesh, which explains how it took over the facility and its inhabitants.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=240}] [{"text":"Simaris | ","color":"aqua"},{"text":"This ability alone makes it incredibly dangerous.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=240}] [{"text":"Simaris | ","color":"aqua"},{"text":"Additionally, it appears to possess extraordinary growth and regenerative abilities.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=240}] [{"text":"Simaris | ","color":"aqua"},{"text":"Had you not destroyed it when you did, I'm afraid it may have been too powerful to stop.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=240}] [{"text":"Simaris | ","color":"aqua"},{"text":"...What is going on?","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=240}] [{"text":"Simaris | ","color":"aqua"},{"text":"It... what?","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=240}] [{"text":"Simaris | ","color":"aqua"},{"text":"Exract the scientists immediately!","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=240}] [{"text":"Simaris | ","color":"aqua"},{"text":"No! They've broken through!","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=240}] [{"text":"Simaris | ","color":"aqua"},{"text":"Activate emergency evacuation procedures now! Contact the m--","color":"white"}]
														# Long Pause Here
tellraw @s[scores={inquognito.transmission.tick=240}] [{"text":"??? | ","color":"light_purple"},{"text":"Hello, Hunter.","color":"light_purple"}]
tellraw @s[scores={inquognito.transmission.tick=240}] [{"text":"??? | ","color":"light_purple"},{"text":"I'll be borrowing these creatures for the time being.","color":"light_purple"}]
tellraw @s[scores={inquognito.transmission.tick=240}] [{"text":"??? | ","color":"light_purple"},{"text":"I must thank you. You have freed me from my prison.","color":"light_purple"}]
tellraw @s[scores={inquognito.transmission.tick=240}] [{"text":"??? | ","color":"light_purple"},{"text":"I had conquered the facility, but could not leave... until you and your friends got me out.","color":"light_purple"}]
tellraw @s[scores={inquognito.transmission.tick=240}] [{"text":"??? | ","color":"light_purple"},{"text":"Well, a piece of me, anyways. But one small cell is enough to start anew.","color":"light_purple"}]
tellraw @s[scores={inquognito.transmission.tick=240}] [{"text":"??? | ","color":"light_purple"},{"text":"You've given me a new home. So much power here...","color":"light_purple"}]
tellraw @s[scores={inquognito.transmission.tick=240}] [{"text":"??? | ","color":"light_purple"},{"text":"Until we meet again... I will make the Hunter the prey.","color":"light_purple"}]

execute if score @s inquognito.transmission.tick matches 60.. run function inquognito:logic/transmissions/end

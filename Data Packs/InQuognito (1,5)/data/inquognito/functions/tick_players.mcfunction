function inquognito:logic/tick/abilities

execute if score @s inquognito.dialogue.intro matches 421.. run function inquognito:logic/tick/pickups

# Elevator
execute if block ~-3 ~58 ~15 #minecraft:buttons[powered=true] run function inquognito:logic/elevator/down
execute if block ~-5 ~3 ~14 #minecraft:buttons[powered=true] run function inquognito:logic/elevator/up

# Dialogue
scoreboard players add @s[scores={inquognito.dialogue.intro=1..420}] inquognito.dialogue.intro 1
tellraw @s[scores={inquognito.dialogue.intro=60}] [{"text":"Simaris | ","color":"aqua"},{"text":"Hunter. We have arrived at the facility.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.intro=120}] [{"text":"Simaris | ","color":"aqua"},{"text":"It appears to have been placed on lockdown due to your presence.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.intro=220}] [{"text":"Simaris | ","color":"aqua"},{"text":"Your objective is to find a way to bypass the security measures and investigate the distress signal emanating from within this facility.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.intro=320}] [{"text":"Simaris | ","color":"aqua"},{"text":"If I may be truthful, I have doubts that your current arsenal will be enough for this mission. You should make it a high priority to seek any combat technology that may assist you.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.intro=420}] [{"text":"Simaris | ","color":"aqua"},{"text":"Good luck, Hunter.","color":"white"}]

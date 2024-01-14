scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=1}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Thank you for coming so quickly, Bounty Hunter. We have arrived at the facility.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"It appears to have been placed on lockdown due to your presence.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=120}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Your objective is to find a way to bypass the security measures and investigate the distress signal emanating from deep within this facility.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=220}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"There is no way to access the arsenal on your ship. You should make it a high priority to seek out any equipment that may be able to assist you.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=320}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Good luck, Hunter.","color":"white","type":"text"}]

execute if score @s inquognito.transmission.tick matches 320.. run function inquognito:logic/transmissions/end

return 1
scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=1}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Hunter, I have information for you. My analysis says that the weapon you have just acquired is an experimental weapon, codename: Varia Beam.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"It appears to have been designed to be easily modified and upgraded.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=120}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"The likelihood of discovering ways to enhance a device of this nature within this compound seems extremely likely.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=180}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"I will keep a record of pertinent data in the tooltip of the item for you.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=240}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"There is something else. Possessing the weapon seems to have increased your clearance level.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=300}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"You seem to have been granted access to more of the facility.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=360}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"I have scanned the compound and found the entrance to the next sector; it is the first door on the left from the entrance you came in through.","color":"white","type":"text"}]
tellraw @s[scores={inquognito.transmission.tick=420}] [{"text":"Simaris | ","color":"aqua","type":"text"},{"text":"Your primary directive is to proceed deeper into the facility and figure out where the distress signal is originating from.","color":"white","type":"text"}]

execute if score @s inquognito.transmission.tick matches 420.. run function inquognito:logic/transmissions/end

return 1
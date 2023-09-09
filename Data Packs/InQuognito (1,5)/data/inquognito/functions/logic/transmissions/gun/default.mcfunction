scoreboard players add @s inquognito.transmission.tick 1

tellraw @s[scores={inquognito.transmission.tick=1}] [{"text":"Simaris | ","color":"aqua"},{"text":"Hunter, I have information for you. My analysis says that the weapon you have just acquired is an experimental weapon, codename: Varia Beam.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=60}] [{"text":"Simaris | ","color":"aqua"},{"text":"It appears to have been designed to be easily modified and upgraded.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=120}] [{"text":"Simaris | ","color":"aqua"},{"text":"The likelihood of discovering ways to enhance a device of this nature within this compound seems extremely likely.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=180}] [{"text":"Simaris | ","color":"aqua"},{"text":"I will keep a record of pertinent data in the tooltip of the item for you.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=240}] [{"text":"Simaris | ","color":"aqua"},{"text":"There is something else. Possessing the weapon seems to have increased your clearance level.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=300}] [{"text":"Simaris | ","color":"aqua"},{"text":"You seem to have been granted access to more of the facility.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=360}] [{"text":"Simaris | ","color":"aqua"},{"text":"I have scanned the compound and found the entrance to the next sector; it is the first door on the left from the entrance you came in through.","color":"white"}]
tellraw @s[scores={inquognito.transmission.tick=420}] [{"text":"Simaris | ","color":"aqua"},{"text":"Your primary directive is to proceed deeper into the facility and figure out where the distress signal is originating from.","color":"white"}]

execute if score @s inquognito.transmission.tick matches 420.. run function inquognito:logic/transmissions/end

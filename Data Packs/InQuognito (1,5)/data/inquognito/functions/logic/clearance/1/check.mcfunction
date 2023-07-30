tellraw @s[scores={inquognito.clearance.1.codes=1}] [{"text":"Simaris | ","color":"aqua"},{"text":"Hunter. The object you just picked up appears to be some kind of personnel clearance badge. However, the data appears too corrupted to be of use alone. Continue looking around and see if you can find any more.","color":"white"}]
tellraw @s[scores={inquognito.clearance.1.codes=2}] [{"text":"Simaris | ","color":"aqua"},{"text":"Just as I thought; this fragment has new data. I am close to being able to generate a clearance passcode for you. Continue searching. I believe that just one more will do.","color":"white"}]

execute if entity @s[scores={inquognito.clearance.1.codes=3}] run function inquognito:logic/clearance/1/gain

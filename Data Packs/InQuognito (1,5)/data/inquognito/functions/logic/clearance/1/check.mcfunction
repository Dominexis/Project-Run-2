tellraw @s [{"text":"Security Cards Found: ","color":"green","type":"text"},{"score":{"name":"@s","objective":"inquognito.clearance.1.codes"},"color":"yellow","type":"score"},{"text":"/3","color":"gold","type":"text"}]

tellraw @s[scores={inquognito.clearance.1.codes=1}] [{"text":"Incoming Transmission (Security Card 1) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 2"},"type":"text"}]
tellraw @s[scores={inquognito.clearance.1.codes=2}] [{"text":"Incoming Transmission (Security Card 2) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 3"},"type":"text"}]

execute if entity @s[scores={inquognito.clearance.1.codes=3}] run function inquognito:logic/clearance/1/gain

return 1
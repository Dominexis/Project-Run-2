tellraw @s [{"text":"===== ","bold":true,"color":"gold"},{"text":"Summary","bold":true,"color":"yellow"},{"text":" =====","bold":true,"color":"gold"}]

tellraw @s [{"text":"Upgrades Found: ","color":"gold"},{"score":{"name":"@s","objective":"inquognito.upgrades"},"color":"gold"},{"text":"/","color":"gold"},{"score":{"name":"max_upgrades","objective":"inquognito.values"},"color":"gold"}]

tellraw @s {"text":"============================","bold":true,"color":"gold"}

execute if score @s inquognito.upgrades >= max_upgrades inquognito.values run tellraw @s [{"text":"Incoming Transmission (Simaris) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 6"}}]

#function pr:player/finish

tellraw @s [{"text":"===== ","bold":true,"color":"gold"},{"text":"Summary","bold":true,"color":"yellow"},{"text":" =====","bold":true,"color":"gold"}]

tellraw @s [{"text":"Upgrades Found: ","color":"gold"},{"score":{"name":"@s","objective":"inquognito.upgrades"},"color":"gold"},{"text":"/","color":"gold"},{"score":{"name":"max_upgrades","objective":"inquognito.values"},"color":"gold"}]

tellraw @s {"text":"============================","bold":true,"color":"gold"}

function inquognito:logic/reset_player

function pr:player/finish

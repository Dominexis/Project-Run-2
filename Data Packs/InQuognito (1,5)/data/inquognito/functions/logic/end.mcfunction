tellraw @s [{"text":"===== ","bold":true,"color":"gold","type":"text"},{"text":"Summary","bold":true,"color":"yellow","type":"text"},{"text":" =====","bold":true,"color":"gold","type":"text"}]

tellraw @s [{"text":"Upgrades Found: ","color":"gold","type":"text"},{"score":{"name":"@s","objective":"inquognito.upgrades"},"color":"gold","type":"score"},{"text":"/","color":"gold","type":"text"},{"score":{"name":"max_upgrades","objective":"inquognito.values"},"color":"gold","type":"score"}]

tellraw @s {"text":"============================","bold":true,"color":"gold","type":"text"}

function inquognito:logic/reset_player

function pr:player/finish

return 1
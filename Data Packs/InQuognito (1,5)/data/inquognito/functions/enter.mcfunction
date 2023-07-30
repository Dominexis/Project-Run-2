function inquognito:logic/reset_player

attribute @s minecraft:generic.max_health base set 10.0
effect give @s minecraft:instant_health 1 50 true

function inquognito:logic/suits/mk1

scoreboard players set @s inquognito.dialogue.intro 1

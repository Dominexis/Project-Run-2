execute positioned ~-5 ~69 ~-24 run function inquognito:logic/plot/boss/particles/tractor_beam
execute positioned ~4 ~137 ~-2 run function inquognito:logic/plot/escape_sequence/tractor_beam/ship

execute if entity @s[tag=inquognito.win] positioned ~-15 ~-62 ~15 run function inquognito:logic/plot/post_game/tick

execute if score @s inquognito.dialogue matches 90 run function inquognito:logic/plot/post_game/default
execute if score @s inquognito.dialogue matches 99 run function inquognito:logic/plot/post_game/perfection

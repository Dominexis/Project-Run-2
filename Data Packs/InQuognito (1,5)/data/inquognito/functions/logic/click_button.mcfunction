# Elevator
execute positioned 136.5 0.5 520.5 positioned ~-3 ~58 ~15 if block ~ ~ ~ #minecraft:buttons[powered=true] run function inquognito:logic/plot/elevator/down
execute positioned 136.5 0.5 520.5 positioned ~-5 ~3 ~14 if block ~ ~ ~ #minecraft:buttons[powered=true] run function inquognito:logic/plot/elevator/up

# Escape Sequence Elevator
execute positioned 136.5 0.5 520.5 positioned ~-22 ~88 ~-28 if block ~ ~ ~ #minecraft:buttons[powered=true] run function inquognito:logic/plot/escape_sequence/elevator/up

advancement revoke @s only inquognito:click_button

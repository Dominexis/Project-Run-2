# Elevator
execute positioned 136.5 0.5 520.5 if block ~-3 ~58 ~15 #minecraft:buttons[powered=true] run function inquognito:logic/plot/elevator/down
execute positioned 136.5 0.5 520.5 if block ~-5 ~3 ~14 #minecraft:buttons[powered=true] run function inquognito:logic/plot/elevator/up

advancement revoke @s only inquognito:click_button

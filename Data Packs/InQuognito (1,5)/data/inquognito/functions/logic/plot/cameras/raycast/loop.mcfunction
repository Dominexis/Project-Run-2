scoreboard players remove @s inquognito.raycast 1

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=pr.target,dx=0] facing entity @p[tag=pr.target,dx=0] eyes if score @s inquognito.raycast_success matches 0 run function inquognito:logic/plot/cameras/raycast/success

execute if score @s inquognito.raycast matches 1.. if block ^ ^ ^0.1 #inquognito:passthrough if score @s inquognito.raycast_success matches 0 positioned ^ ^ ^0.1 run function inquognito:logic/plot/cameras/raycast/loop

scoreboard players remove @s inquognito.raycast 1

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0,tag=pr.target] facing entity @p[dx=0,tag=pr.target] eyes if score @s inquognito.raycast_success matches 0 run function inquognito:logic/plot/cameras/raycast/success

execute if score @s inquognito.raycast matches 1.. if block ^ ^ ^0.1 #inquognito:passthrough if score @s inquognito.raycast_success matches 0 positioned ^ ^ ^0.1 run function inquognito:logic/plot/cameras/raycast/loop

return 1
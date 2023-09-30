scoreboard players remove @s inquognito.raycast 1

execute if score @s inquognito.raycast_success matches 0 positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=pr.target,dx=0] facing entity @p[tag=pr.target,dx=0] eyes run function inquognito:logic/enemies/common/janitor/acid_spray/raycast/success

execute if score @s inquognito.raycast_success matches 0 if score @s inquognito.raycast matches 1.. if block ^ ^ ^0.5 #inquognito:passthrough positioned ^ ^ ^0.5 run function inquognito:logic/enemies/common/janitor/acid_spray/raycast/loop

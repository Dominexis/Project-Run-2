scoreboard players set @s inquognito.raycast 200
scoreboard players set @s inquognito.raycast_success 0
execute facing entity @p[distance=..20,tag=pr.target] eyes positioned ^ ^ ^ run function inquognito:logic/plot/cameras/raycast/loop

return 1
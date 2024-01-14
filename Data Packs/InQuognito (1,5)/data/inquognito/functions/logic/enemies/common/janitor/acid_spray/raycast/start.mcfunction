scoreboard players set @s inquognito.raycast 20
scoreboard players set @s inquognito.raycast_success 0
execute facing entity @p[distance=..10,tag=pr.target] eyes positioned ^ ^ ^ run function inquognito:logic/enemies/common/janitor/acid_spray/raycast/loop

return 1
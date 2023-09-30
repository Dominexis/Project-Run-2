scoreboard players set @s inquognito.raycast 20
scoreboard players set @s inquognito.raycast_success 0
execute facing entity @p[tag=pr.target,distance=..10] eyes positioned ^ ^ ^ run function inquognito:logic/enemies/common/janitor/acid_spray/raycast/loop

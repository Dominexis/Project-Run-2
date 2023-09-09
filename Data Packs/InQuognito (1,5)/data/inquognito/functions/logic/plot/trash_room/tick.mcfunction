execute store result score trash_room.enemies inquognito.temp if entity @e[type=#inquognito:enemies,tag=inquognito.trash_room.enemy]
execute unless score trash_room.enemies inquognito.temp matches 2.. if predicate inquognito:random/1 run function inquognito:logic/plot/trash_room/summon

execute as @e[type=#inquognito:enemies,tag=inquognito.trash_room.enemy] run function inquognito:logic/plot/trash_room/enemy_tick

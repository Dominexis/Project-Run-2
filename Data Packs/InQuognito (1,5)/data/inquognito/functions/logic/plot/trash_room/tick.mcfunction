execute store result score trash_room.enemies inquognito.temp if entity @e[type=#inquognito:enemies,tag=inquognito.enemy.trash_room]
execute unless score trash_room.enemies inquognito.temp matches 2.. if predicate inquognito:random/1 run function inquognito:logic/plot/trash_room/summon

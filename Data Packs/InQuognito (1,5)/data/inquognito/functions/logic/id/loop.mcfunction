scoreboard players add temp inquognito.id 1

scoreboard players reset invalid inquognito.id
execute as @a[tag=pr.target,tag=inquognito.id_set] if score @s inquognito.id = temp inquognito.id run scoreboard players set invalid inquognito.id 1

execute unless score invalid inquognito.id matches 1 run function inquognito:logic/id/set
execute if score invalid inquognito.id matches 1 run function inquognito:logic/id/loop

return 1
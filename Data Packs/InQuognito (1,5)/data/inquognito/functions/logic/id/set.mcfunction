execute as @a[predicate=inquognito:player,tag=inquognito.id_set] unless score @s inquognito.id = temp inquognito.id run scoreboard players set invalid inquognito.id 1

scoreboard players operation @s inquognito.id = temp inquognito.id

scoreboard players reset temp inquognito.id

tag @s add inquognito.id_set

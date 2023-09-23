scoreboard players add @s inquognito.temp 1

execute if score @s inquognito.temp matches 2 summon minecraft:marker run function inquognito:logic/enemies/common/janitor/acid_spray/init/marker
execute if score @s inquognito.temp matches 4 summon minecraft:marker run function inquognito:logic/enemies/common/janitor/acid_spray/init/marker
execute if score @s inquognito.temp matches 6 summon minecraft:marker run function inquognito:logic/enemies/common/janitor/acid_spray/init/marker
execute if score @s inquognito.temp matches 8 summon minecraft:marker run function inquognito:logic/enemies/common/janitor/acid_spray/init/marker
execute if score @s inquognito.temp matches 10 summon minecraft:marker run function inquognito:logic/enemies/common/janitor/acid_spray/init/marker

execute if score @s inquognito.temp matches 10.. run scoreboard players reset @s inquognito.temp

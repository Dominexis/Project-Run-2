scoreboard players add @s inquognito.temp 1
scoreboard players operation #modulo inquognito.temp = @s inquognito.temp
scoreboard players operation #modulo inquognito.temp %= #20 pr.value

execute if score #modulo inquognito.temp matches 0 run damage @s 0.5 inquognito:generic

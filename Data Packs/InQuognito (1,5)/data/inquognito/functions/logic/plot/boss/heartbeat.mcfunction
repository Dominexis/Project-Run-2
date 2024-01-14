scoreboard players add @s inquognito.boss.heartbeat 1

scoreboard players operation #modulo inquognito.temp = @s inquognito.boss.heartbeat

execute if score @s inquognito.boss.health matches 0 run scoreboard players operation #modulo inquognito.temp %= 40 inquognito.values
execute if score @s inquognito.boss.health matches 1 run scoreboard players operation #modulo inquognito.temp %= 30 inquognito.values
execute if score @s inquognito.boss.health matches 2 run scoreboard players operation #modulo inquognito.temp %= #20 pr.value
execute if score @s inquognito.boss.health matches 3 run scoreboard players operation #modulo inquognito.temp %= #10 pr.value

execute if score #modulo inquognito.temp matches 0 at @s run playsound minecraft:entity.warden.heartbeat ambient @s ~ ~ ~ 0.75 1.0
execute if score #modulo inquognito.temp matches 0 run scoreboard players reset @s inquognito.boss.heartbeat

return 1
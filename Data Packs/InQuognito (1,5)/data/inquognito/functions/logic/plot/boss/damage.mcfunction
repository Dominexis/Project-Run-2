clear @s minecraft:tnt{inquognito.sonic_charge:1}

scoreboard players add @s inquognito.boss.health 1

execute if score @s inquognito.boss.health matches 1 run function inquognito:logic/plot/boss/state/1
execute if score @s inquognito.boss.health matches 2 run function inquognito:logic/plot/boss/state/2
execute if score @s inquognito.boss.health matches 3 run function inquognito:logic/plot/boss/state/3

playsound minecraft:block.sculk_shrieker.shriek hostile @s
playsound minecraft:block.sculk_shrieker.shriek hostile @s
playsound minecraft:block.sculk_shrieker.shriek hostile @s

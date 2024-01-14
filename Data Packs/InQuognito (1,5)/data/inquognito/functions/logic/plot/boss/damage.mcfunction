clear @s minecraft:tnt{inquognito.sonic_charge:1}

scoreboard players add @s inquognito.boss.health 1

scoreboard players reset @s inquognito.dialogue.tick
execute if score @s inquognito.boss.health matches 1 run scoreboard players set @s inquognito.dialogue 1
execute if score @s inquognito.boss.health matches 2 run scoreboard players set @s inquognito.dialogue 2
execute if score @s inquognito.boss.health matches 3 run scoreboard players set @s inquognito.dialogue 3
execute if score @s inquognito.boss.health matches 4 run scoreboard players set @s inquognito.dialogue 4

playsound minecraft:block.sculk_shrieker.shriek hostile @s
playsound minecraft:block.sculk_shrieker.shriek hostile @s
playsound minecraft:block.sculk_shrieker.shriek hostile @s

return 1
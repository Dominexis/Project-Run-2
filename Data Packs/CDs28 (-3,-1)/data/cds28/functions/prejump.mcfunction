#summon two creepers (1 and 2 radius)
scoreboard players add @s timerCDs 12
playsound minecraft:entity.firework_rocket.launch ambient @a ~ ~ ~ 1 1.2
particle minecraft:end_rod ~ ~0.5 ~ 0 0 0 0.3 100 force
return 1
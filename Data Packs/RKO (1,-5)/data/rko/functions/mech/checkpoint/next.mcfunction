scoreboard players add @s rko.checkpoint 1

playsound minecraft:entity.player.levelup master @s ~ ~ ~ 5 1
playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 5 1

title @s subtitle [{"text":"C","bold":"true","color":"#34C934"},{"text":"h","bold":"true","color":"#3DCE3D"},{"text":"e","bold":"true","color":"#46D346"},{"text":"c","bold":"true","color":"#4FD84F"},{"text":"k","bold":"true","color":"#58DD58"},{"text":"p","bold":"true","color":"#61E261"},{"text":"o","bold":"true","color":"#6AE76A"},{"text":"i","bold":"true","color":"#73EC73"},{"text":"n","bold":"true","color":"#7CF17C"},{"text":"t ","bold":"true","color":"#85F685"},{"score":{"objective":"rko.checkpoint","name":"@s"},"bold":"true","color":"#96ff96"}]

execute at @s anchored eyes run particle minecraft:flash ^ ^ ^0.6 0 0 0 0 3 normal @s
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 1 1 1 5 75 normal @s

title @s times 10 20 10
title @s title ""

function pr:player/checkpoint/mark
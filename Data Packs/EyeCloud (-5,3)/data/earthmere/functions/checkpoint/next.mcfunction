scoreboard players add @s earthmere_cp 1

playsound minecraft:ui.loom.take_result master @s ~ ~ ~ 5 1
execute anchored eyes run particle minecraft:totem_of_undying ^ ^ ^0.75 1 1 1 0.1 100 normal @s

title @s times 10 20 10
title @s title ""
title @s subtitle [{"text":"C","bold":"true","color":"#FACA3C"},{"text":"h","bold":"true","color":"#FACE48"},{"text":"e","bold":"true","color":"#FAD254"},{"text":"c","bold":"true","color":"#FAD660"},{"text":"k","bold":"true","color":"#FADA6C"},{"text":"p","bold":"true","color":"#FADE78"},{"text":"o","bold":"true","color":"#FAE284"},{"text":"i","bold":"true","color":"#FAE690"},{"text":"n","bold":"true","color":"#FAEA9C"},{"text":"t","bold":"true","color":"#FAEEA8"},{"score":{"objective":"earthmere_cp","name":"@s"},"bold":"true","color":"#FFF9B8"}]

function pr:player/checkpoint/mark
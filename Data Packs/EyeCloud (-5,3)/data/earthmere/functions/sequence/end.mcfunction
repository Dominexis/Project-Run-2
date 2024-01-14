scoreboard players add @s earthmere_end 1

execute if score @s earthmere_end matches 1 at @s run particle minecraft:end_rod ~ ~1.5 ~ 0.75 1 0.75 0.01 75 normal @s
execute if score @s earthmere_end matches 1 at @s run playsound earthmere:end master @s ~ ~ ~ 5 0

execute if score @s earthmere_end matches 80 at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 5 0
execute if score @s earthmere_end matches 80 run effect give @s minecraft:blindness 3 0 true

execute if score @s earthmere_end matches 120 at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 5 0

execute if score @s earthmere_end matches 120 run function earthmere:sequence/lanterns
execute if score @s earthmere_end matches 160 run function earthmere:sequence/lanterns
execute if score @s earthmere_end matches 200 run function earthmere:sequence/lanterns
execute if score @s earthmere_end matches 240 run function earthmere:sequence/lanterns

execute if score @s earthmere_end matches 255 run function pr:player/finish
return 1
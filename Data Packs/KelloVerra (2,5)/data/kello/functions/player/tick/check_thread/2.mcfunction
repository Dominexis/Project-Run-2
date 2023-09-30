# Atmospheric

execute if score @s kello.player.chapter matches 0 run function kello:player/tick/atmosphere/chapter_1
execute if score @s kello.player.chapter matches 1 run function kello:player/tick/atmosphere/chapter_2


# Check y level

execute store result score @s kello.player.y run data get entity @s Pos[1] 10
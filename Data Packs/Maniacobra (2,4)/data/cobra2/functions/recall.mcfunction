effect give @s night_vision infinite 0 true
effect give @s invisibility infinite 0 true
effect give @s resistance infinite 4 true

execute if score @s cobra2.ambient matches 5000.. run stopsound @s ambient
execute if score @s cobra2.ambient matches 5000.. run playsound minecraft:music.dragon ambient @s ~ ~ ~ 2 0.5
execute if score @s cobra2.ambient matches 5000.. run scoreboard players reset @s cobra2.ambient
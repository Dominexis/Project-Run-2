tp @s ~-1 ~290 ~-27 -45 0
playsound minecraft:block.end_portal.spawn master @s ~-1 ~290 ~-27 3
effect clear @s minecraft:levitation
execute at @s run tp @s @s
return 1
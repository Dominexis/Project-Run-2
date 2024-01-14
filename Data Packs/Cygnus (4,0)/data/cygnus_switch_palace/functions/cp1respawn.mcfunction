effect give @s minecraft:slow_falling 1 0 true
tp @s @e[type=minecraft:armor_stand,tag=cygnus_cp1,limit=1]
execute at @e[type=minecraft:armor_stand,tag=cygnus_cp0] run playsound minecraft:entity.enderman.teleport master @s
return 1
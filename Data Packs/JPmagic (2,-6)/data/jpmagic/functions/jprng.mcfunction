
#SUPER JUMP
execute as @a[tag=pr.target,tag=!JP_RNG] at @s if block ~ ~ ~ polished_blackstone_pressure_plate if score @s jpmagic.tmp matches 1 run effect give @s[tag=pr.target] minecraft:jump_boost 10 50 true
#SPEEDSTER
execute as @a[tag=pr.target,tag=!JP_RNG] at @s if block ~ ~ ~ polished_blackstone_pressure_plate if score random jpmagic.tmp matches 2 run effect give @s[tag=pr.target] speed 10 255 true
#BLINDED BY THE LIGHTS
execute as @a[tag=pr.target,tag=!JP_RNG] at @s if block ~ ~ ~ polished_blackstone_pressure_plate if score random jpmagic.tmp matches 3 run effect give @s[tag=pr.target] blindness 10 255 true
#FLY UP
execute as @a[tag=pr.target,tag=!JP_RNG] at @s if block ~ ~ ~ polished_blackstone_pressure_plate if score random jpmagic.tmp matches 4 run effect give @s[tag=pr.target] levitation 1 50 true
#SLOW
execute as @a[tag=pr.target,tag=!JP_RNG] at @s if block ~ ~ ~ polished_blackstone_pressure_plate if score random jpmagic.tmp matches 5 run effect give @s[tag=pr.target] slowness 10 10 true

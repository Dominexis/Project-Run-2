scoreboard players set #input pr.value 5
function pr:generic/rng/lcg

#SUPER JUMP
execute as @a[tag=pr.target,tag=!JP_RNG] at @s if block ~ ~ ~ polished_blackstone_pressure_plate if score #output pr.value matches 0 run effect give @s minecraft:jump_boost 10 4 true
#SPEEDSTER
execute as @a[tag=pr.target,tag=!JP_RNG] at @s if block ~ ~ ~ polished_blackstone_pressure_plate if score #output pr.value matches 1 run effect give @s speed 10 4 true
#BLINDED BY THE LIGHTS
execute as @a[tag=pr.target,tag=!JP_RNG] at @s if block ~ ~ ~ polished_blackstone_pressure_plate if score #output pr.value matches 2 run effect give @s blindness 10 0 true
#FLY UP
execute as @a[tag=pr.target,tag=!JP_RNG] at @s if block ~ ~ ~ polished_blackstone_pressure_plate if score #output pr.value matches 3 run effect give @s levitation 1 15 true
#SLOW
execute as @a[tag=pr.target,tag=!JP_RNG] at @s if block ~ ~ ~ polished_blackstone_pressure_plate if score #output pr.value matches 4 run effect give @s slowness 10 0 true

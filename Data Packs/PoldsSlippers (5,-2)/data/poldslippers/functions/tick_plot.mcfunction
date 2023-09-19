scoreboard players add Time Polds.HalfSecTimer 1
scoreboard players add Time Polds.OneSecTimer 1

#Moving
execute as @e[type=armor_stand,tag=pr.target,tag=WoodPlatform] at @s if score Timer Polds.HalfSecTimer matches 9 run tp @s ^ ^ ^1
execute as @e[type=armor_stand,tag=pr.target,tag=WoodPlatform] at @s if score Timer Polds.HalfSecTimer matches 9 run clone ^1 ^4 ^1 ^-1 ^-1 ^-3 ^-1 ^-1 ^-2 masked force

#Wood Platform Turn Around
execute as @e[type=armor_stand,tag=pr.target,tag=WoodPlatform] if block ~ ~ ~ cave_air run execute as @a[tag=pr.target] at @s run playsound block.barrel.close master @s ~ ~ ~ 1 1 1
execute as @e[type=armor_stand,tag=pr.target,tag=WoodPlatform] if block ~ ~ ~ void_air run execute as @a[tag=pr.target] at @s run playsound block.barrel.close master @s ~ ~ ~ 1 1 1
execute as @e[type=armor_stand,tag=pr.target,tag=WoodPlatform] if block ~ ~ ~ cave_air run tp @s ^ ^ ^2 facing ^ ^ ^-5
execute as @e[type=armor_stand,tag=pr.target,tag=WoodPlatform] if block ~ ~ ~ cave_air run tp @s ^ ^ ^2 facing ^ ^ ^-5

#Timer Reset
execute if score Time Polds.HalfSecTimer matches 10 run scoreboard players set Time Polds.HalfSecTimer 0
execute if score Time Polds.HalfSecTimer matches 20 run scoreboard players set Time Polds.OneSecTimer 0
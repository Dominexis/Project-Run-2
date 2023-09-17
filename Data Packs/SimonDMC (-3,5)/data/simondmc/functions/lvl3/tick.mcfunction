### Level 3

execute as @a[tag=pr.target] store result score @s sdmc.item.bone_meal run clear @s bone_meal 0

# Pick up bone meal (if the player hasn't had one in the last two seconds)
execute at @e[tag=pr.target,tag=sdmc.display-bone-meal] as @a[distance=..1.3,tag=pr.target,scores={sdmc.item.bone_meal=0}] unless score @s sdmc.bone-meal-timeout matches 1.. run give @s bone_meal{display:{Name:'{"text":"Shriveled Bone Meal","italic":false}'},CanPlaceOn:["minecraft:big_dripleaf"]}
# Count down 1.5 seconds after using bone meal (to prevent getting it back immediately)
execute as @a[tag=pr.target,scores={sdmc.item.bone_meal=1..}] run scoreboard players set @s sdmc.bone-meal-timeout 30
execute as @a[tag=pr.target] if score @s sdmc.bone-meal-timeout matches 1.. run scoreboard players remove @s sdmc.bone-meal-timeout 1

# Reset dripleaves after 1.5 seconds of each being "extended"
execute if block ~28 ~26 ~17 big_dripleaf run scoreboard players add sdmc.leafL sdmc.sys 1
execute if score sdmc.leafL sdmc.sys matches 30.. run setblock ~28 ~26 ~17 air
execute if score sdmc.leafL sdmc.sys matches 30.. run setblock ~28 ~25 ~17 big_dripleaf
execute if score sdmc.leafL sdmc.sys matches 30.. run scoreboard players reset sdmc.leafL sdmc.sys

execute if block ~26 ~26 ~17 big_dripleaf run scoreboard players add sdmc.leafR sdmc.sys 1
execute if score sdmc.leafR sdmc.sys matches 30.. run setblock ~26 ~26 ~17 air
execute if score sdmc.leafR sdmc.sys matches 30.. run setblock ~26 ~25 ~17 big_dripleaf
execute if score sdmc.leafR sdmc.sys matches 30.. run scoreboard players reset sdmc.leafR sdmc.sys

# Clear bone meal while standing on basalt/smooth basalt
# (tagged to preserve execute location at plot origin)
execute as @a[tag=pr.target,scores={sdmc.item.bone_meal=1..}] at @s if block ~ ~-.1 ~ smooth_basalt run tag @s add sdmc.on-basalt
execute as @a[tag=pr.target,scores={sdmc.item.bone_meal=1..}] at @s if block ~ ~-.1 ~ basalt run tag @s add sdmc.on-basalt
execute as @a[tag=pr.target,scores={sdmc.item.bone_meal=1..}] at @s if block ~ ~-.1 ~ mud run tag @s add sdmc.on-basalt
# Also clear if standing in a structure void (above edges of basalt, no easy way of detecting otherwise)
execute as @a[tag=pr.target,scores={sdmc.item.bone_meal=1..}] at @s if block ~ ~ ~ structure_void run tag @s add sdmc.on-basalt
# Clear on edge at the corner of the up arrow block (~27 ~25 ~20), no structure block because dripleaf stem
execute as @a[tag=pr.target,scores={sdmc.item.bone_meal=1..}] at @s if block ~ ~-2.1 ~ dead_bubble_coral_fan run tag @s add sdmc.on-basalt
execute as @a[tag=pr.target,tag=sdmc.on-basalt] run function simondmc:lvl3/clear_bone_meal
tag @a[tag=pr.target] remove sdmc.on-basalt

# Make bone meal undroppable
execute as @e[type=item,tag=pr.target,tag=!sdmc.display-item,nbt={Item:{id:"minecraft:bone_meal"}}] run data merge entity @s {PickupDelay:0}
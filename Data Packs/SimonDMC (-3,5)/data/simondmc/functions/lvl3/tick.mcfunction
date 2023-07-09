### Level 3

# Refill barrel after a second of it being empty
execute unless block ~27 ~32 ~20 barrel{Items:[{Slot:13b}]} run scoreboard players add sdmc.barrel sdmc.sys 1
execute if score sdmc.barrel sdmc.sys matches 20.. run function simondmc:lvl3/reset_barrel
execute if score sdmc.barrel sdmc.sys matches 20.. run scoreboard players reset sdmc.barrel sdmc.sys

# Extend dripleaf when clicked with bone meal (simulated due to real dripleaf hitbox being tiny)
execute as @e[tag=pr.target,tag=sdmc.bone-meal-click] on target if entity @s[nbt={SelectedItem:{id:"minecraft:bone_meal"}}] run function simondmc:lvl3/extend_dripleaf
execute as @e[tag=pr.target,tag=sdmc.bone-meal-click] run data remove entity @s interaction

# Reset dripleaf after 1.5 seconds of it being extended
execute if score sdmc.leaf sdmc.sys matches 0.. run scoreboard players add sdmc.leaf sdmc.sys 1
execute if score sdmc.leaf sdmc.sys matches 30.. run setblock ~27 ~26 ~17 air
execute if score sdmc.leaf sdmc.sys matches 30.. run setblock ~27 ~25 ~17 big_dripleaf
execute if score sdmc.leaf sdmc.sys matches 30.. run scoreboard players reset sdmc.leaf sdmc.sys

# Clear bone meal while standing on basalt/smooth basalt
# (tagged to preserve execute location at plot origin)
execute as @a[tag=pr.target,nbt={Inventory:[{id:"minecraft:bone_meal"}]}] at @s if block ~ ~-.1 ~ smooth_basalt run tag @s add sdmc.on-basalt
execute as @a[tag=pr.target,nbt={Inventory:[{id:"minecraft:bone_meal"}]}] at @s if block ~ ~-.1 ~ basalt run tag @s add sdmc.on-basalt
execute as @a[tag=pr.target,nbt={Inventory:[{id:"minecraft:bone_meal"}]}] at @s if block ~ ~-.1 ~ mud run tag @s add sdmc.on-basalt
# Also clear if standing in a structure void (above edges of basalt, no easy way of detecting otherwise)
execute as @a[tag=pr.target,nbt={Inventory:[{id:"minecraft:bone_meal"}]}] at @s if block ~ ~ ~ structure_void run tag @s add sdmc.on-basalt
# Clear on edge at the corner of the up arrow block (~27 ~25 ~20), no structure block because dripleaf stem
execute as @a[tag=pr.target,nbt={Inventory:[{id:"minecraft:bone_meal"}]}] at @s if block ~ ~-2.1 ~ dead_bubble_coral_fan run tag @s add sdmc.on-basalt
execute as @a[tag=pr.target,tag=sdmc.on-basalt] run function simondmc:lvl3/clear_bone_meal
tag @a[tag=pr.target] remove sdmc.on-basalt

# Slow second dripleaf descent
# (this system was put in place as a difficulty nerf due to the maneuver being way too difficult)
execute positioned ~26.5 ~26 ~19.5 if entity @a[tag=pr.target,dx=1,dy=1,dz=1] run scoreboard players add sdmc.slow-leaf sdmc.sys 1
# Prevent falling through due to actual dripleaf descent
execute if score sdmc.slow-leaf sdmc.sys matches ..40 if block ~27 ~26 ~20 big_dripleaf[tilt=full] positioned ~26.5 ~26 ~19.5 as @a[tag=pr.target,dx=1,dy=1,dz=1] at @s run tp @s ~ ~.2 ~
execute unless score sdmc.slow-leaf sdmc.sys matches 20.. run setblock ~27 ~26 ~20 big_dripleaf
execute if score sdmc.slow-leaf sdmc.sys matches 20..40 run setblock ~27 ~26 ~20 big_dripleaf[tilt=partial]
execute if score sdmc.slow-leaf sdmc.sys matches 41.. run setblock ~27 ~26 ~20 big_dripleaf[tilt=full]
execute positioned ~27 ~27 ~20 unless entity @a[tag=pr.target,distance=..2] run scoreboard players reset sdmc.slow-leaf sdmc.sys

# Make bone meal undroppable
execute as @e[type=item,tag=pr.target,tag=!sdmc.display-item,nbt={Item:{id:"minecraft:bone_meal"}}] run data merge entity @s {PickupDelay:0}
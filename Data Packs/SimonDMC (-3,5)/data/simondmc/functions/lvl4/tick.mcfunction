### Level 4

execute as @a[tag=pr.target] store result score @s sdmc.item.axolotl_bucket run clear @s axolotl_bucket 0
execute as @a[tag=pr.target] store result score @s sdmc.item.axolotl_bucket_2 run clear @s axolotl_bucket{CanPlaceOn:["minecraft:big_dripleaf"]} 0
execute as @a[tag=pr.target] store result score @s sdmc.item.water_bucket run clear @s water_bucket 0
execute as @a[tag=pr.target] store result score @s sdmc.item.water_bucket_2 run clear @s water_bucket{display:{}} 0
execute as @a[tag=pr.target] store result score @s sdmc.item.bucket run clear @s bucket 0
execute as @a[tag=pr.target] store result score @s sdmc.item.bucket_2 run clear @s bucket{CanPlaceOn:["minecraft:water"]} 0

# Replace axolotl bucket
execute as @a[tag=pr.target,scores={sdmc.item.axolotl_bucket=1..,sdmc.item.axolotl_bucket_2=0}] run function simondmc:lvl4/replace_axolotl_bucket

# Replace water bucket
execute as @a[tag=pr.target,scores={sdmc.item.water_bucket=1..,sdmc.item.water_bucket_2=0}] run function simondmc:lvl4/replace_water_bucket

# Replace empty bucket
execute as @a[tag=pr.target,scores={sdmc.item.bucket=1..,sdmc.item.bucket_2=0}] run function simondmc:lvl4/replace_empty_bucket

# Spawn new axolotl after a second if there are none
execute positioned ~12 ~29 ~16 unless entity @e[type=axolotl,dx=5,dy=4,dz=6,tag=pr.target,tag=sdmc.pond-axolotl] run scoreboard players add sdmc.axolotl sdmc.sys 1
execute if score sdmc.axolotl sdmc.sys matches 20.. run summon axolotl ~14 ~29 ~19 {Tags:["sdmc.pond-axolotl"],Invulnerable:1b}
execute if score sdmc.axolotl sdmc.sys matches 20.. run scoreboard players reset sdmc.axolotl sdmc.sys

# Give back bucket when near axolotl if player somehow lost it
execute at @e[type=axolotl,tag=pr.target,tag=sdmc.pond-axolotl] as @a[distance=..3,tag=pr.target,scores={sdmc.item.axolotl_bucket=0,sdmc.item.water_bucket=0,sdmc.item.bucket=0}] run give @s bucket{CanPlaceOn:["minecraft:water"]}

# Remove door axolotl and water after two seconds
scoreboard players add @e[type=axolotl,tag=pr.target,tag=!sdmc.pond-axolotl] sdmc.axolotl-timer 1
execute as @e[type=axolotl,tag=pr.target,tag=!sdmc.pond-axolotl] if score @s sdmc.axolotl-timer matches 40.. if block ~11 ~31 ~14 big_dripleaf[tilt=none] run setblock ~11 ~31 ~14 big_dripleaf[facing=east,tilt=none]
execute as @e[type=axolotl,tag=pr.target,tag=!sdmc.pond-axolotl] if score @s sdmc.axolotl-timer matches 40.. if block ~11 ~31 ~14 big_dripleaf[tilt=unstable] run setblock ~11 ~31 ~14 big_dripleaf[facing=east,tilt=unstable]
execute as @e[type=axolotl,tag=pr.target,tag=!sdmc.pond-axolotl] if score @s sdmc.axolotl-timer matches 40.. if block ~11 ~31 ~14 big_dripleaf[tilt=partial] run setblock ~11 ~31 ~14 big_dripleaf[facing=east,tilt=partial]
execute as @e[type=axolotl,tag=pr.target,tag=!sdmc.pond-axolotl] if score @s sdmc.axolotl-timer matches 40.. if block ~11 ~31 ~14 big_dripleaf[tilt=full] run setblock ~11 ~31 ~14 big_dripleaf[facing=east,tilt=full]
execute as @e[type=axolotl,tag=pr.target,tag=!sdmc.pond-axolotl] if score @s sdmc.axolotl-timer matches 40.. run kill @s

# Prevent stealing waterfall
setblock ~14 ~32 ~22 water

# Prevent skipping level by smuggling a loaded crossbow out of level 2
execute positioned ~11 ~31 ~14 run kill @e[type=arrow,tag=pr.target,distance=..3]

# Prevent smuggling an axolotl bucket out of this level (inventory)
execute positioned ~8 ~29 ~11 as @a[dy=5,dz=7,tag=pr.target,scores={sdmc.item.axolotl_bucket=1..}] run function simondmc:lvl4/clear_axolotl_bucket
execute positioned ~24 ~30 ~9 as @a[dy=5,dz=5,tag=pr.target,scores={sdmc.item.axolotl_bucket=1..}] run function simondmc:lvl4/clear_axolotl_bucket

# Prevent smuggling an axolotl bucket out of this level (item)
execute positioned ~8 ~29 ~11 as @e[type=item,dy=5,dz=7,tag=pr.target,nbt={Item:{id:"minecraft:axolotl_bucket"}}] run data merge entity @s {Item:{id:"minecraft:water_bucket",Count:1b,tag:{CanPlaceOn:[]}}}
execute positioned ~24 ~30 ~9 as @e[type=item,dy=5,dz=5,tag=pr.target,nbt={Item:{id:"minecraft:axolotl_bucket"}}] run data merge entity @s {Item:{id:"minecraft:water_bucket",Count:1b,tag:{CanPlaceOn:[]}}}
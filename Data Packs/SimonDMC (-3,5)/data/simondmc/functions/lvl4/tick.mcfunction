### Level 4

# Replace axolotl bucket
execute as @a[tag=pr.target,nbt={Inventory:[{id:"minecraft:axolotl_bucket"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:axolotl_bucket",tag:{CanPlaceOn:["minecraft:big_dripleaf"]}}]}] run function simondmc:lvl4/replace_axolotl_bucket

# Replace water bucket
execute as @a[tag=pr.target,nbt={Inventory:[{id:"minecraft:water_bucket"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:water_bucket",tag:{display:{}}}]}] run function simondmc:lvl4/replace_water_bucket

# Replace empty bucket
execute as @a[tag=pr.target,nbt={Inventory:[{id:"minecraft:bucket"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:bucket",tag:{CanPlaceOn:["minecraft:water"]}}]}] run function simondmc:lvl4/replace_empty_bucket

# Spawn new axolotl after a second if there are none
execute positioned ~12 ~29 ~16 unless entity @e[type=axolotl,dx=5,dy=4,dz=6,tag=pr.target,tag=sdmc.pond-axolotl] run scoreboard players add sdmc.axolotl sdmc.sys 1
execute if score sdmc.axolotl sdmc.sys matches 20.. run summon axolotl ~14 ~29 ~19 {Tags:["sdmc.pond-axolotl"],Invulnerable:1b}
execute if score sdmc.axolotl sdmc.sys matches 20.. run scoreboard players reset sdmc.axolotl sdmc.sys

# Give back bucket when near axolotl if player somehow lost it
execute at @e[type=axolotl,tag=pr.target,tag=sdmc.pond-axolotl] as @a[distance=..3,tag=pr.target,nbt=!{Inventory:[{id:"minecraft:bucket"}]},nbt=!{Inventory:[{id:"minecraft:water_bucket"}]},nbt=!{Inventory:[{id:"minecraft:axolotl_bucket"}]}] run give @s bucket{CanPlaceOn:["minecraft:water"]}

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
execute positioned ~8 ~29 ~11 as @a[dy=5,dz=7,tag=pr.target,nbt={Inventory:[{id:"minecraft:axolotl_bucket"}]}] run function simondmc:lvl4/clear_axolotl_bucket
execute positioned ~24 ~30 ~9 as @a[dy=5,dz=5,tag=pr.target,nbt={Inventory:[{id:"minecraft:axolotl_bucket"}]}] run function simondmc:lvl4/clear_axolotl_bucket

# Prevent smuggling an axolotl bucket out of this level (item)
execute positioned ~8 ~29 ~11 as @e[type=item,dy=5,dz=7,tag=pr.target,nbt={Item:{id:"minecraft:axolotl_bucket"}}] run data merge entity @s {Item:{id:"minecraft:water_bucket",Count:1b,tag:{CanPlaceOn:[]}}}
execute positioned ~24 ~30 ~9 as @e[type=item,dy=5,dz=5,tag=pr.target,nbt={Item:{id:"minecraft:axolotl_bucket"}}] run data merge entity @s {Item:{id:"minecraft:water_bucket",Count:1b,tag:{CanPlaceOn:[]}}}
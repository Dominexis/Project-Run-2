# kill conditions
execute if block ~ ~-.1 ~ minecraft:oxidized_copper if block ~ ~-2 ~ minecraft:red_terracotta run function piemel:initdeath
execute if block ~ ~-.1 ~ minecraft:black_stained_glass run function piemel:initdeath

# slide triggers
execute if entity @s[tag=piemel.sliding] at @e[tag=piemel.slideanchor,tag=pr.target,sort=nearest,limit=1] positioned ~ ~3.25 ~ run tp @s ~ ~ ~ -90 40
execute at @s[tag=piemel.sliding] run tp @s @s
execute if entity @s[tag=piemel.sliding] if block ~ ~-10 ~ minecraft:red_concrete run function piemel:slide/end

# grappling gun
# tag @s remove piemel.aiminggrapple
# execute if block ~ ~-2 ~ green_terracotta run function piemel:grappling/checkitem

# launcher check
# execute if block ~ ~-2 ~ yellow_terracotta run function piemel:launcher/check

# execute if block ~ ~-2 ~ cyan_terracotta run function piemel:spwnminecart

# compass check: looks down and no x/z movement
# execute store result score yaw piemel.values run data get entity @s Rotation[1]
# execute store result score motx piemel.values run data get entity @s Motion[0]
# execute store result score motz piemel.values run data get entity @s Motion[2]
# execute if score yaw piemel.values matches 90 if score motx piemel.values matches 0 if score motz piemel.values matches 0 run function piemel:compass/draw

# trigger progress when touching item frames
# execute if score @s piemel.progress matches 0 if entity @e[tag=piemel.receival1,tag=pr.target,distance=..1] run function piemel:collect/grapple
# execute if score @s piemel.progress matches 1 if entity @e[tag=piemel.receival2,tag=pr.target,distance=..1] run function piemel:collect/launch
# execute if score @s piemel.progress matches 2 if entity @e[tag=piemel.receival3,tag=pr.target,distance=..1] run function piemel:collect/trident
# execute if score @s piemel.progress matches 3 if entity @e[tag=piemel.receival4,tag=pr.target,distance=..1] run function piemel:collect/swing

# click detection
# execute if entity @s[tag=piemel.aiminggrapple] if score @s piemel.coas matches 1.. run function piemel:grappling/pull/start
# execute if entity @s[tag=piemel.aimingswing] if score @s piemel.coas matches 1.. run function piemel:swing/jump/start
# scoreboard players set @s piemel.coas 0

# hint countdown
# execute if score @s piemel.hintto matches 1.. run scoreboard players add @s piemel.hintto 1
# execute if score @s piemel.hintto matches 100 run function piemel:collect/hint



execute store result score #item_count piemel.values run clear @s minecraft:trident 0
execute if entity @s[tag=piemel.trident] if score #item_count piemel.values matches 0 run give @s minecraft:trident{Enchantments:[{id:"minecraft:riptide",lvl:3s}],Unbreakable:1b}
execute if entity @s[tag=piemel.trident] if score #item_count piemel.values matches 2.. run clear @s minecraft:trident
return 1
### Global

# Quick item pickup
execute as @e[type=minecraft:item,tag=pr.target] store result score @s sdmc.item-pickup-timer run data get entity @s PickupDelay
execute as @e[type=minecraft:item,tag=pr.target,tag=!sdmc.display-item] unless score @s sdmc.item-pickup-timer matches ..10 run data merge entity @s {PickupDelay:10}

# Despawn items after 10 seconds
execute as @e[type=minecraft:item,tag=pr.target,tag=!sdmc.display-item] run scoreboard players add @s sdmc.item-despawn-timer 1
execute as @e[type=minecraft:item,tag=pr.target,tag=!sdmc.display-item] if score @s sdmc.item-despawn-timer matches 200.. run kill @s

# Remove ground items of that type near display items
execute at @e[type=minecraft:item,tag=pr.target,tag=sdmc.display-bucket] run kill @e[type=minecraft:item,distance=..3,tag=pr.target,tag=!sdmc.display-item,nbt={Item:{id:"minecraft:bucket"}}]
execute at @e[type=minecraft:item,tag=pr.target,tag=sdmc.display-crossbow] run kill @e[type=minecraft:item,distance=..3,tag=pr.target,tag=!sdmc.display-item,nbt={Item:{id:"minecraft:crossbow"}}]
execute at @e[type=minecraft:item,tag=pr.target,tag=sdmc.display-arrow] run kill @e[type=minecraft:item,distance=..3,tag=pr.target,tag=!sdmc.display-item,nbt={Item:{id:"minecraft:arrow"}}]

# Remove ground items of that type near backup give spots
execute at @e[type=minecraft:axolotl,tag=pr.target,tag=sdmc.pond-axolotl] run kill @e[type=minecraft:item,distance=..5,tag=pr.target,tag=!sdmc.display-item,nbt={Item:{id:"minecraft:bucket"}}]
execute at @e[type=minecraft:axolotl,tag=pr.target,tag=sdmc.pond-axolotl] run kill @e[type=minecraft:item,distance=..5,tag=pr.target,tag=!sdmc.display-item,nbt={Item:{id:"minecraft:water_bucket"}}]
execute at @e[type=minecraft:axolotl,tag=pr.target,tag=sdmc.pond-axolotl] run kill @e[type=minecraft:item,distance=..5,tag=pr.target,tag=!sdmc.display-item,nbt={Item:{id:"minecraft:axolotl_bucket"}}]
execute at @e[type=minecraft:item,tag=pr.target,tag=sdmc.display-arrow] run kill @e[type=minecraft:item,distance=..3,tag=pr.target,tag=!sdmc.display-item,nbt={Item:{id:"minecraft:crossbow"}}]

# Make sure player doesn't have >1 of any item
execute as @a[tag=pr.target] run function simondmc:global/item_limit

# Kill ground arrows after a few ticks
execute as @e[type=minecraft:arrow,tag=pr.target,nbt={inGround:1b}] run scoreboard players add @s sdmc.arrow-timer 1
execute as @e[type=minecraft:arrow,tag=pr.target] if score @s sdmc.arrow-timer matches 5.. run kill @s

# Remove XP orbs
kill @e[type=minecraft:experience_orb,tag=pr.target]
return 1
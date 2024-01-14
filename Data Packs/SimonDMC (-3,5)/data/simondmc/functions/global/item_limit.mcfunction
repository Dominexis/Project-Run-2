### Makes sure player doesn't have >1 of any item
# Called by global/tick

# Bucket variations
execute store result score @s sdmc.item-counter run clear @s minecraft:bucket 0
execute if score @s sdmc.item-counter matches 2.. run clear @s minecraft:bucket 1
execute store result score @s sdmc.item-counter run clear @s minecraft:water_bucket 0
execute if score @s sdmc.item-counter matches 2.. run clear @s minecraft:water_bucket 1
# Also clear all buckets if player has a water bucket
execute if score @s sdmc.item-counter matches 1.. run clear @s minecraft:bucket
execute store result score @s sdmc.item-counter run clear @s minecraft:axolotl_bucket 0
execute if score @s sdmc.item-counter matches 2.. run clear @s minecraft:axolotl_bucket 1
# Also clear all water buckets and buckets if player has an axolotl bucket
execute if score @s sdmc.item-counter matches 1.. run clear @s minecraft:water_bucket
execute if score @s sdmc.item-counter matches 1.. run clear @s minecraft:bucket

# Crossbow
execute store result score @s sdmc.item-counter run clear @s minecraft:crossbow 0
execute if score @s sdmc.item-counter matches 2.. run clear @s minecraft:crossbow 1

# Bone meal
execute store result score @s sdmc.item-counter run clear @s minecraft:bone_meal 0
execute if score @s sdmc.item-counter matches 2.. run clear @s minecraft:bone_meal 1

# Arrow
execute store result score @s sdmc.item-counter run clear @s minecraft:arrow 0
execute if score @s sdmc.item-counter matches 2.. run clear @s minecraft:arrow 1
return 1
# Data

tag @s remove kello.entity.target.new
tag @s add kello.entity
tag @s add kello.decal
tag @s add kello.entity.type.moving_platform
tag @s add kello.entity.part.display_container
tag @s add pr.ignore
tag @s add kello.exclude

data merge entity @s {height:1f,width:2.75f,brightness:{sky:15,block:13}}
data modify entity @s item.tag.CustomModelData.display.color set value 2106383



# Assign scores

scoreboard players set @s kello.decal.active 1
scoreboard players operation @s kello.entity.id = #global kello.entity.id

function kello:entity/decal/init





# Fix rotation and summon platforms

execute on passengers run tp @s ~ ~ ~ ~ ~
tp @s ~ ~ ~ ~ ~

execute positioned ^01 ^ ^-1 summon item_display run function kello:entity/decal/component/moving_platform/spawn/platform/vehicle
execute positioned ^00 ^ ^-1 summon item_display run function kello:entity/decal/component/moving_platform/spawn/platform/vehicle
execute positioned ^-1 ^ ^-1 summon item_display run function kello:entity/decal/component/moving_platform/spawn/platform/vehicle

execute positioned ^01 ^ ^0 summon item_display run function kello:entity/decal/component/moving_platform/spawn/platform/vehicle
execute positioned ^00 ^ ^0 summon item_display run function kello:entity/decal/component/moving_platform/spawn/platform/vehicle
execute positioned ^-1 ^ ^0 summon item_display run function kello:entity/decal/component/moving_platform/spawn/platform/vehicle

execute positioned ^01 ^ ^1 summon item_display run function kello:entity/decal/component/moving_platform/spawn/platform/vehicle
execute positioned ^00 ^ ^1 summon item_display run function kello:entity/decal/component/moving_platform/spawn/platform/vehicle
execute positioned ^-1 ^ ^1 summon item_display run function kello:entity/decal/component/moving_platform/spawn/platform/vehicle




# Assign entity IDs

scoreboard players operation @s kello.entity.timer = #moving_platform_spawn_timer kello.value
scoreboard players operation @s kello.decal.timer = #moving_platform_timer kello.value

scoreboard players add #global kello.entity.id 1
scoreboard players operation @s kello.entity.id = #global kello.entity.id
scoreboard players operation @s kello.decal.id = #local kello.decal.id



# Point

data modify storage kello:data tag.Owner set from entity @s UUID

execute summon snowball run function kello:entity/decal/component/moving_platform/spawn/point
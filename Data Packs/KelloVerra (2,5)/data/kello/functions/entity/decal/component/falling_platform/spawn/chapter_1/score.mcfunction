# Assign variants

scoreboard players set #input pr.value 4
function pr:generic/rng/lcg

function animated_java:falling_platform/apply_variant/air
scoreboard players operation @s kello.entity.variant = #output pr.value


# Assign scores

scoreboard players set @s kello.decal.active 1

function kello:entity/decal/init





# Assign tags

tag @s add kello.entity
tag @s add kello.entity.ticking
tag @s add kello.decal
tag @s add kello.entity.type.chapter_1
tag @s add kello.entity.type.falling_platform
tag @s add kello.entity.part.display
tag @s remove kello.entity.target.new


# Summon extra components

tag @s add kello.target
execute summon minecraft:shulker run function kello:entity/decal/component/falling_platform/spawn/chapter_1/platform
tag @s remove kello.target



# Assign entity IDs

scoreboard players operation @s kello.decal.timer = #falling_platform_timer kello.value
scoreboard players operation @s kello.entity.timer = #falling_platform_countdown kello.value

# scoreboard players add #local kello.entity.id 1
scoreboard players operation @s kello.entity.id = #local kello.entity.id
scoreboard players operation @s kello.decal.id = #local kello.decal.id



# Displays

execute on passengers if entity @s[type=minecraft:item_display,tag=aj.falling_platform.bone.root] run function kello:entity/decal/component/falling_platform/spawn/chapter_1/display/root
execute on passengers if entity @s[type=minecraft:item_display,tag=aj.falling_platform.bone.extra] run function kello:entity/decal/component/falling_platform/spawn/chapter_1/display/extra
return 1
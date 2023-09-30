# Initialize shulker collider(s)

scoreboard players operation @s kello.entity.id = #global kello.entity.id
function kello:entity/decal/component/moving_platform/spawn/platform/platform

data modify storage kello:data tag.Owner set from entity @s UUID




# Summon pointer

execute summon snowball run function kello:entity/decal/component/moving_platform/spawn/platform/pointer
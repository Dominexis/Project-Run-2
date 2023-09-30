# Initialize shulker collider(s)

execute if score #position kello.value matches 0 align xyz positioned ~.5 ~.5 ~.5 positioned ^ ^ ^1 run function kello:entity/decal/component/forward_platform/spawn/chapter_2/platform/platform
execute if score #position kello.value matches 1 align xyz positioned ~.5 ~.5 ~.5 positioned ^ ^ ^ run function kello:entity/decal/component/forward_platform/spawn/chapter_2/platform/platform
execute if score #position kello.value matches 2 align xyz positioned ~.5 ~.5 ~.5 positioned ^ ^ ^-1 run function kello:entity/decal/component/forward_platform/spawn/chapter_2/platform/platform

data modify storage kello:data tag.Owner set from entity @s UUID




# Summon pointer

execute summon snowball run function kello:entity/decal/component/forward_platform/spawn/chapter_2/platform/pointer
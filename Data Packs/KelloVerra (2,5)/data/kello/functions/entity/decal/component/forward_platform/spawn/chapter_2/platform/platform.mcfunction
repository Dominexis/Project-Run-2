data merge entity @s {Tags:["kello.entity","kello.decal","kello.exclude","kello.entity.type.forward_platform","kello.entity.part.platform"]}
tp @s ~ ~ ~


tag @s add kello.vehicle.target
execute summon minecraft:shulker run function kello:entity/decal/component/forward_platform/spawn/chapter_2/platform/platform_init
tag @s remove kello.vehicle.target
return 1
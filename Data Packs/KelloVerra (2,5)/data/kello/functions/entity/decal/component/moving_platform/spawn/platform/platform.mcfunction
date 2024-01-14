data merge entity @s {Tags:["kello.entity","kello.decal","kello.exclude","kello.entity.type.moving_platform","kello.entity.part.platform","pr.ignore","kello.exclude"]}
tp @s ~ ~ ~


tag @s add kello.vehicle.target
execute summon minecraft:shulker run function kello:entity/decal/component/moving_platform/spawn/platform/platform_init
tag @s remove kello.vehicle.target
return 1
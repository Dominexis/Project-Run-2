execute as @e[type=item_display,tag=kello.entity.type.falling_platform,tag=kello.entity.part.boom] if score @s kello.entity.id = #local kello.entity.id run data merge entity @s {item:{id:"minecraft:leather_helmet",Count:1b,tag:{CustomModelData:351909}}}

function kello:entity/decal/component/falling_platform/state/fall/prestart
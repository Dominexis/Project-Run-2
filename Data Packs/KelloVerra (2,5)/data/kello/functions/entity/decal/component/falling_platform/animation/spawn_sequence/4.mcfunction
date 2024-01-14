execute as @e[type=minecraft:item_display,tag=kello.entity.type.falling_platform,tag=kello.entity.part.boom] if score @s kello.entity.id = #local kello.entity.id run data merge entity @s {item:{id:"minecraft:leather_helmet",tag:{CustomModelData:351909},Count:1b}}

function kello:entity/decal/component/falling_platform/state/fall/prestart
return 1
data merge entity @s {width:1.25,height:1.5}
data merge entity @s {brightness:{sky:3,block:1}}
execute if entity @s[tag=aj.comet_flake.bone.tail] run data merge entity @s {brightness:{sky:15,block:6}}
data modify entity @s item.tag.display.color set value 2106383
tp @s ~ ~ ~ ~ 0

function kello:debug/decal/util/spawn/verify/decals/initialize
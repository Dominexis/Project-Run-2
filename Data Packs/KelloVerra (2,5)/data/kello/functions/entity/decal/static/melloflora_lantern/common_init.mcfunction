data merge entity @s {width:0,height:0}
# data merge entity @s {brightness:{sky:2,block:2}}
execute if score #variant kello.value matches 0 run data merge entity @s {brightness:{sky:1,block:2}}
execute if score #variant kello.value matches 1 run data merge entity @s {brightness:{sky:0,block:1}}
execute if score #variant kello.value matches 2 run data merge entity @s {brightness:{sky:0,block:0}}
data modify entity @s item.tag.display.color set value 2106383
tp @s ~ ~ ~ 0 0

scoreboard players set #input pr.value 361
function pr:generic/rng/lcg
execute unless entity @s[tag=aj.melloflora_lantern.bone.petal] store result entity @s Rotation[0] float 1 run scoreboard players get #output pr.value

scoreboard players set #input pr.value 46
function pr:generic/rng/lcg
execute unless entity @s[tag=aj.melloflora_lantern.bone.root] store result entity @s Rotation[0] float 1 run scoreboard players get #output pr.value



function kello:debug/decal/util/spawn/verify/decals/initialize
tag @s remove kello.target.new
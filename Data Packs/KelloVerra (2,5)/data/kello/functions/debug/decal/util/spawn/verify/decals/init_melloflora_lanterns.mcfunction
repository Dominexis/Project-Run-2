data merge entity @s {width:0,height:0}
data merge entity @s {brightness:{sky:2,block:2}}
data merge entity @s[tag=aj.melloflora_lantern_sho.bone.root] {brightness:{sky:1,block:2}}
data merge entity @s[tag=aj.melloflora_lantern_med.bone.root] {brightness:{sky:0,block:1}}
data merge entity @s[tag=aj.melloflora_lantern_lar.bone.root] {brightness:{sky:0,block:0}}
data modify entity @s item.tag.display.color set value 2106383
tp @s ~ ~ ~ 0 0

scoreboard players set #input pr.value 361
function pr:generic/rng/lcg
execute unless entity @s[tag=aj.melloflora_lantern_sho.bone.petal] unless entity @s[tag=aj.melloflora_lantern_med.bone.petal] unless entity @s[tag=aj.melloflora_lantern_lar.bone.petal] store result entity @s Rotation[0] float 1 run scoreboard players get #output pr.value

scoreboard players set #input pr.value 46
function pr:generic/rng/lcg
execute unless entity @s[tag=aj.melloflora_lantern_sho.bone.root] unless entity @s[tag=aj.melloflora_lantern_med.bone.root] unless entity @s[tag=aj.melloflora_lantern_lar.bone.root] store result entity @s Rotation[0] float 1 run scoreboard players get #output pr.value



# function kello:debug/decal/util/spawn/verify/decals/initialize
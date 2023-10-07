data merge entity @s {width:3.75,height:5.5}
data merge entity @s {brightness:{sky:3,block:1}}
execute if entity @s[tag=aj.comet_flake.bone.tail] run data merge entity @s {brightness:{sky:15,block:6}}
data modify entity @s item.tag.display.color set value 2106383


scoreboard players set #input pr.value 361
execute if entity @s[tag=aj.comet_flake.root] run function pr:generic/rng/lcg
execute if entity @s[tag=aj.comet_flake.root] store result entity @s Rotation[0] float 1 run scoreboard players get #output pr.value
execute if entity @s[tag=aj.comet_flake.root] at @s on passengers run tp @s ~ ~ ~ ~ 0


function kello:debug/decal/util/spawn/verify/decals/initialize
tag @s remove kello.target.new
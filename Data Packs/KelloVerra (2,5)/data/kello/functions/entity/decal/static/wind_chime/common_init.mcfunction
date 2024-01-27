data merge entity @s {brightness:{sky:4,block:1},item:{tag:{display:{color:2106383}}}}
execute on passengers run data merge entity @s {brightness:{sky:8,block:4},item:{tag:{display:{color:2106383}}}}

scoreboard players set #input pr.value 360
function pr:generic/rng/lcg
execute store result entity @s Rotation[0] float 1 run scoreboard players get #output pr.value

execute at @s run tp @s ~ ~-.5 ~ ~ 0


function kello:debug/decal/util/spawn/verify/decals/initialize
return 1
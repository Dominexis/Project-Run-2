data modify storage kello:data tag.decal.data set from entity @s data
scoreboard players set #variant kello.value 0
execute store result score #variant kello.value run data get storage kello:data tag.decal.data.variant

execute store result score #rot_speed kello.value run data get storage kello:data tag.decal.data.rot_speed
execute store result score #rot_mode kello.value run data get storage kello:data tag.decal.data.rot_mode

scoreboard players set #input pr.value 4
function pr:generic/rng/lcg

scoreboard players operation #color kello.value = #output pr.value
execute if entity @s[tag=kello.decal.type.melloflora_lantern] run function kello:entity/decal/static/melloflora_lantern/verify
# execute if entity @s[tag=kello.decal.type.melloflora_lantern_medium] run function kello:entity/decal/static/melloflora_lantern/medium
# execute if entity @s[tag=kello.decal.type.melloflora_lantern_large] run function kello:entity/decal/static/melloflora_lantern/large

execute if entity @s[tag=kello.decal.type.wall_mellolily] run function kello:entity/decal/static/wall_mellolily/verify
# execute if entity @s[tag=kello.decal.type.wall_mellolily_medium] run function kello:entity/decal/static/wall_mellolily/medium
# execute if entity @s[tag=kello.decal.type.wall_mellolily_large] run function kello:entity/decal/static/wall_mellolily/large

execute if entity @s[tag=kello.decal.type.mellolily_pot] run function kello:entity/decal/static/pot_mellolily/verify

execute if entity @s[tag=kello.decal.type.melloleta] run function kello:entity/decal/static/melloleta/verify
# execute if entity @s[tag=kello.decal.type.melloleta_patch_singular] run function kello:entity/decal/static/melloleta/patch_singular
# execute if entity @s[tag=kello.decal.type.melloleta_patch_areal] run function kello:entity/decal/static/melloleta/patch_areal
# execute if entity @s[tag=kello.decal.type.melloleta_path] run function kello:entity/decal/static/melloleta/path

execute if entity @s[tag=kello.decal.type.melloorainn] run function kello:entity/decal/static/mellorainn/verify

# execute if entity @s[tag=kello.decal.type.mellorainn_patch] run function animated_java:mellorainn_cluster/summon
# execute if entity @s[tag=kello.decal.type.mellorainn_cluster] run function animated_java:mellorainn_cluster/summon

execute if entity @s[tag=kello.decal.type.comet_flake] run function kello:entity/decal/static/comet_flake/verify
# execute if entity @s[tag=kello.decal.type.comet_medium] run function kello:entity/decal/static/comet_flake/medium
# execute if entity @s[tag=kello.decal.type.comet_large] run function kello:entity/decal/static/comet_flake/large
# execute if entity @s[tag=kello.decal.type.comet_giant] run function kello:entity/decal/static/comet_flake/giant

execute if entity @s[tag=kello.decal.type.large_cogwheel_display] run function kello:debug/decal/util/spawn/verify/decals/init_melloflora_display
# execute if entity @s[tag=kello.decal.type.small_cogwheel_display] run function kello:debug/decal/util/spawn/verify/decals/init_eobonica_display

execute if entity @s[tag=kello.decal.type.mellobanner] summon item_display run function kello:debug/decal/util/spawn/verify/decals/init_mellobanner

execute if entity @s[tag=kello.decal.type.animwheel_dummy] run function kello:entity/decal/decwheel/spawn/animwheel/verify

execute if entity @s[tag=kello.decal.type.flyfan] run function kello:entity/decal/static/flyfan/verify

# tag @s remove kello.decal.init

# kill @s
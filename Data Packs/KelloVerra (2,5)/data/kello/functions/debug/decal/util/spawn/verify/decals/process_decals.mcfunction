scoreboard players set #input pr.value 4
function pr:generic/rng/lcg

execute if entity @s[tag=kello.decal.type.melloflora_lantern_short] if score #output pr.value matches 0 run function animated_java:melloflora_lantern_sho/summon/magenta
execute if entity @s[tag=kello.decal.type.melloflora_lantern_short] if score #output pr.value matches 1 run function animated_java:melloflora_lantern_sho/summon/blue
execute if entity @s[tag=kello.decal.type.melloflora_lantern_short] if score #output pr.value matches 2 run function animated_java:melloflora_lantern_sho/summon/turquoise
execute if entity @s[tag=kello.decal.type.melloflora_lantern_short] if score #output pr.value matches 3 run function animated_java:melloflora_lantern_sho/summon/bud

execute if entity @s[tag=kello.decal.type.melloflora_lantern_medium] if score #output pr.value matches 0 run function animated_java:melloflora_lantern_med/summon/bud
execute if entity @s[tag=kello.decal.type.melloflora_lantern_medium] if score #output pr.value matches 1 run function animated_java:melloflora_lantern_med/summon/blue
execute if entity @s[tag=kello.decal.type.melloflora_lantern_medium] if score #output pr.value matches 2 run function animated_java:melloflora_lantern_med/summon/magenta
execute if entity @s[tag=kello.decal.type.melloflora_lantern_medium] if score #output pr.value matches 3 run function animated_java:melloflora_lantern_med/summon/turquoise

execute if entity @s[tag=kello.decal.type.melloflora_lantern_large] if score #output pr.value matches 0 run function animated_java:melloflora_lantern_lar/summon/blue
execute if entity @s[tag=kello.decal.type.melloflora_lantern_large] if score #output pr.value matches 1 run function animated_java:melloflora_lantern_lar/summon/bud
execute if entity @s[tag=kello.decal.type.melloflora_lantern_large] if score #output pr.value matches 2 run function animated_java:melloflora_lantern_lar/summon/turquoise
execute if entity @s[tag=kello.decal.type.melloflora_lantern_large] if score #output pr.value matches 3 run function animated_java:melloflora_lantern_lar/summon/magenta

execute if entity @s[tag=kello.decal.type.wall_mellolily_small] run function animated_java:wall_mellolily_small/summon
execute if entity @s[tag=kello.decal.type.wall_mellolily_medium] run function animated_java:wall_mellolily_medium/summon
execute if entity @s[tag=kello.decal.type.wall_mellolily_large] run function animated_java:wall_mellolily_large/summon

execute if entity @s[tag=kello.decal.type.mellolily_pot_0] run function animated_java:wall_mellolily_pot_0/summon
execute if entity @s[tag=kello.decal.type.mellolily_pot_1] run function animated_java:wall_mellolily_pot_1/summon

execute if entity @s[tag=kello.decal.type.melloleta_patch] run function animated_java:melloleta_patch/summon
execute if entity @s[tag=kello.decal.type.melloleta_path] run function animated_java:melloleta_patch/summon

execute if entity @s[tag=kello.decal.type.mellorainn_patch] run function animated_java:mellorainn_cluster/summon
execute if entity @s[tag=kello.decal.type.mellorainn_cluster] run function animated_java:mellorainn_cluster/summon

execute if entity @s[tag=kello.decal.type.comet_small] run function animated_java:comet_flake/summon
execute if entity @s[tag=kello.decal.type.comet_medium] run function animated_java:comet_flake/summon
execute if entity @s[tag=kello.decal.type.comet_large] if score #output pr.value matches 0..1 run function animated_java:comet_flake/summon
execute if entity @s[tag=kello.decal.type.comet_large] if score #output pr.value matches 2..3 run function animated_java:comet_flake/summon

execute if entity @s[tag=kello.decal.type.large_cogwheel_display] run function kello:debug/decal/util/spawn/verify/decals/init_melloflora_display
# execute if entity @s[tag=kello.decal.type.small_cogwheel_display] run function kello:debug/decal/util/spawn/verify/decals/init_eobonica_display

execute if entity @s[tag=kello.decal.type.mellobanner] summon item_display run function kello:debug/decal/util/spawn/verify/decals/init_mellobanner

# tag @s remove kello.decal.init

kill @s
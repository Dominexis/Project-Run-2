# Add success counter to prevent awkward situations

scoreboard players add #successcount kello.value 1
scoreboard players set #is_dummy kello.value 1



# Verify based of id's

# Functional (controller required)
execute if score #decal kello.value = $decal.small_gear kello.decal run function kello:entity/decal/decwheel/spawn/small
execute if score #decal kello.value = $decal.large_gear kello.decal run function kello:entity/decal/decwheel/spawn/large
execute if score #decal kello.value = $decal.small_shaft kello.decal run function kello:entity/decal/decwheel/spawn/small_shaft
execute if score #decal kello.value = $decal.large_shaft kello.decal run function kello:entity/decal/decwheel/spawn/large_shaft
# execute if score #decal kello.value = $decal.small_decal_shaft kello.decal run function kello:entity/decal/decwheel/spawn/small_decshaft
execute if score #decal kello.value = $decal.small_decal_shaft kello.decal run function kello:entity/decal/decwheel/spawn/chunk/small_shaft/new
execute if score #decal kello.value = $decal.large_decal_shaft kello.decal run function kello:entity/decal/decwheel/spawn/chunk/large_shaft/new
execute if score #decal kello.value = $decal.chain_platform kello.decal run function kello:entity/decal/component/chain_platform/spawn/main
execute if score #decal kello.value = $decal.escapement kello.decal run function kello:entity/decal/component/escapement/spawn/main
execute if score #decal kello.value = $decal.launchpad kello.decal align xyz positioned ~.5 ~.5 ~.5 run function kello:entity/decal/component/launchpad/spawn/main
execute if score #decal kello.value = $decal.gate_0 kello.decal run function kello:entity/decal/component/gate/spawn/chapter_1/main
execute if score #decal kello.value = $decal.moving_platform kello.decal run function kello:entity/decal/component/moving_platform/spawn/railer/verify


# Decorational (no controller required)
execute if score #decal kello.value = $decal.bg_sml_melloflora_lantern kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.melloflora_lantern","pr.ignore","kello.decal.init"],data:{variant:0}}
execute if score #decal kello.value = $decal.bg_med_melloflora_lantern kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.melloflora_lantern","pr.ignore","kello.decal.init"],data:{variant:1}}
execute if score #decal kello.value = $decal.bg_lar_melloflora_lantern kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.melloflora_lantern","pr.ignore","kello.decal.init"],data:{variant:2}}

execute if score #decal kello.value = $decal.bg_sml_wall_mellolily kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.wall_mellolily","pr.ignore","kello.decal.init"],data:{variant:0}}
execute if score #decal kello.value = $decal.bg_med_wall_mellolily kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.wall_mellolily","pr.ignore","kello.decal.init"],data:{variant:1}}
execute if score #decal kello.value = $decal.bg_lar_wall_mellolily kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.wall_mellolily","pr.ignore","kello.decal.init"],data:{variant:2}}

# execute if score #decal kello.value = $decal.bg_sml_melloria kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.melloria_small","pr.ignore","kello.decal.init"],data:{variant:0}}
# execute if score #decal kello.value = $decal.bg_med_melloria kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.melloria_medium","pr.ignore","kello.decal.init"],data:{variant:0}}

execute if score #decal kello.value = $decal.bg_melloleta_patch_singular kello.decal align xyz positioned ~.5 ~ ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.melloleta","pr.ignore","kello.decal.init"],data:{variant:0}}
execute if score #decal kello.value = $decal.bg_melloleta_path kello.decal align xyz positioned ~.5 ~ ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.melloleta","pr.ignore","kello.decal.init"],data:{variant:1}}
execute if score #decal kello.value = $decal.bg_melloleta_patch_areal kello.decal align xyz positioned ~.5 ~ ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.melloleta","pr.ignore","kello.decal.init"],data:{variant:2}}

execute if score #decal kello.value = $decal.bg_mellorainn_cluster kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.mellorainn","pr.ignore","kello.decal.init"],data:{variant:0}}
execute if score #decal kello.value = $decal.bg_mellorainn_path kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.mellorainn","pr.ignore","kello.decal.init"],data:{variant:1}}

execute if score #decal kello.value = $decal.bg_mellolily_pot_0 kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.mellolily_pot","pr.ignore","kello.decal.init"],data:{variant:0}}
execute if score #decal kello.value = $decal.bg_mellolily_pot_1 kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.mellolily_pot","pr.ignore","kello.decal.init"],data:{variant:1}}

execute if score #decal kello.value = $decal.bg_comet_flakes_sml kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.comet_flake","pr.ignore","kello.decal.init"],data:{variant:0}}
execute if score #decal kello.value = $decal.bg_comet_flakes_med kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.comet_flake","pr.ignore","kello.decal.init"],data:{variant:1}}
execute if score #decal kello.value = $decal.bg_comet_flakes_lar kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.comet_flake","pr.ignore","kello.decal.init"],data:{variant:2}}
execute if score #decal kello.value = $decal.bg_comet_flakes_gia kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.comet_flake","pr.ignore","kello.decal.init"],data:{variant:3}}

execute if score #decal kello.value = $decal.mellobanner_0 kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.mellobanner","pr.ignore","kello.decal.init"],data:{variant:0}}
execute if score #decal kello.value = $decal.mellobanner_1 kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.mellobanner","pr.ignore","kello.decal.init"],data:{variant:1}}
execute if score #decal kello.value = $decal.mellobanner_2 kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.mellobanner","pr.ignore","kello.decal.init"],data:{variant:2}}

execute if score #decal kello.value = $decal.animwheel_0 kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.animwheel_dummy","pr.ignore","kello.decal.init"],data:{variant:0}}
execute if score #decal kello.value = $decal.animwheel_1 kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.animwheel_dummy","pr.ignore","kello.decal.init"],data:{variant:1}}
execute if score #decal kello.value = $decal.animwheel_2 kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.animwheel_dummy","pr.ignore","kello.decal.init"],data:{variant:2}}
execute if score #decal kello.value = $decal.animwheel_3 kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.animwheel_dummy","pr.ignore","kello.decal.init"],data:{variant:3}}
execute if score #decal kello.value = $decal.animwheel_4 kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.animwheel_dummy","pr.ignore","kello.decal.init"],data:{variant:4}}
execute if score #decal kello.value = $decal.animwheel_5 kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.animwheel_dummy","pr.ignore","kello.decal.init"],data:{variant:5}}
execute if score #decal kello.value = $decal.animwheel_6 kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.animwheel_dummy","pr.ignore","kello.decal.init"],data:{variant:6}}
execute if score #decal kello.value = $decal.animwheel_7 kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.animwheel_dummy","pr.ignore","kello.decal.init"],data:{variant:7}}
execute if score #decal kello.value = $decal.animwheel_8 kello.decal align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.decal.spawn_point","kello.decal.type.animwheel_dummy","pr.ignore","kello.decal.init"],data:{variant:8}}

execute as @e[type=marker,tag=kello.decal.spawn_point,tag=kello.decal.init,distance=..4] positioned as @s run function kello:debug/decal/util/spawn/verify/decals/process_decals




scoreboard players set #is_dummy kello.value 0
# execute as @e[type=item_display,distance=..64] at @s run function kello:debug/decal/util/spawn/verify/decals/init_decals
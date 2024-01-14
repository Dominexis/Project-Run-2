#execute positioned ~18 ~39 ~ as @e[type=zombie,dx=2,dy=4,dz=14] run say hi

# First get how many mobs are in each area
# Centered at 65864 0 232
execute store result score im1294.Zombies im1294.wall_right if entity @e[type=minecraft:zombie,tag=pr.target,tag=im1294.wall_right]
execute store result score im1294.Zombies im1294.floor_right if entity @e[type=minecraft:zombie,tag=pr.target,tag=im1294.floor_right]
execute store result score im1294.Zombies im1294.entrance_right if entity @e[type=minecraft:zombie,tag=pr.target,tag=im1294.entrance_right]
execute store result score im1294.Zombies im1294.wall_left if entity @e[type=minecraft:zombie,tag=pr.target,tag=im1294.wall_left]
execute store result score im1294.Zombies im1294.floor_left if entity @e[type=minecraft:zombie,tag=pr.target,tag=im1294.floor_left]
execute store result score im1294.Zombies im1294.entrance_left if entity @e[type=minecraft:zombie,tag=pr.target,tag=im1294.entrance_left]
execute store result score im1294.Zombies im1294.central if entity @e[type=minecraft:zombie,tag=pr.target,tag=im1294.central]
execute store result score im1294.Zombies im1294.summit if entity @e[type=minecraft:zombie,tag=pr.target,tag=im1294.summit]

execute store result score im1294.Wardens im1294.central if entity @e[type=minecraft:warden,tag=pr.target,tag=im1294.central]

execute store result score im1294.Skeletons im1294.wall_right if entity @e[type=minecraft:skeleton,tag=pr.target,tag=im1294.wall_right]
execute store result score im1294.Skeletons im1294.floor_right if entity @e[type=minecraft:skeleton,tag=pr.target,tag=im1294.floor_right]
execute store result score im1294.Skeletons im1294.entrance_right if entity @e[type=minecraft:skeleton,tag=pr.target,tag=im1294.entrance_right]
execute store result score im1294.Skeletons im1294.wall_left if entity @e[type=minecraft:skeleton,tag=pr.target,tag=im1294.wall_left]
execute store result score im1294.Skeletons im1294.floor_left if entity @e[type=minecraft:skeleton,tag=pr.target,tag=im1294.floor_left]
execute store result score im1294.Skeletons im1294.entrance_left if entity @e[type=minecraft:skeleton,tag=pr.target,tag=im1294.entrance_left]
execute store result score im1294.Skeletons im1294.central if entity @e[type=minecraft:skeleton,tag=pr.target,tag=im1294.central]

execute store result score im1294.Strays im1294.central if entity @e[type=minecraft:stray,tag=pr.target,tag=im1294.central]

execute store result score im1294.Spiders im1294.wall_right if entity @e[type=minecraft:spider,tag=pr.target,tag=im1294.wall_right]
execute store result score im1294.Spiders im1294.floor_right if entity @e[type=minecraft:spider,tag=pr.target,tag=im1294.floor_right]
execute store result score im1294.Spiders im1294.entrance_right if entity @e[type=minecraft:spider,tag=pr.target,tag=im1294.entrance_right]
execute store result score im1294.Spiders im1294.wall_left if entity @e[type=minecraft:spider,tag=pr.target,tag=im1294.wall_left]
execute store result score im1294.Spiders im1294.floor_left if entity @e[type=minecraft:spider,tag=pr.target,tag=im1294.floor_left]
execute store result score im1294.Spiders im1294.entrance_left if entity @e[type=minecraft:spider,tag=pr.target,tag=im1294.entrance_left]
execute store result score im1294.Spiders im1294.central if entity @e[type=minecraft:spider,tag=pr.target,tag=im1294.central]

# Now summon more!
execute if score im1294.Zombies im1294.wall_right matches ..1 run summon minecraft:zombie ~-18 ~40 ~ {Tags:["pr.target","im1294.wall_right"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],DeathLootTable:"",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],active_effects:[{id:"minecraft:fire_resistance",show_particles:0b,duration:9999}]}
execute if score im1294.Skeletons im1294.wall_right matches ..1 run summon minecraft:skeleton ~-18 ~40 ~3 {Tags:["pr.target","im1294.wall_right"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],HandItems:[{id:"minecraft:bow",Count:1b}],HandDropChances:[0.0f,0.0f],DeathLootTable:"",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],active_effects:[{id:"minecraft:fire_resistance",show_particles:0b,duration:9999}]}
#execute if score im1294.Spiders im1294.wall_right matches ..3 run summon spider ~-18 ~39 ~10 {Tags:["pr.target","im1294.wall_right"]}

execute if score im1294.Zombies im1294.floor_right matches ..1 run summon minecraft:zombie ~-31 ~27 ~4 {Tags:["pr.target","im1294.floor_right"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],DeathLootTable:"",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],active_effects:[{id:"minecraft:fire_resistance",show_particles:0b,duration:9999}]}
execute if score im1294.Skeletons im1294.floor_right matches ..1 run summon minecraft:skeleton ~-37 ~27 ~6 {Tags:["pr.target","im1294.floor_right"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],HandItems:[{id:"minecraft:bow",Count:1b}],HandDropChances:[0.0f,0.0f],DeathLootTable:"",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],active_effects:[{id:"minecraft:fire_resistance",show_particles:0b,duration:9999}]}
#execute if score im1294.Spiders im1294.floor_right matches ..5 run summon spider ~-27 ~30 ~16 {Tags:["pr.target","im1294.floor_right"]}

execute if score im1294.Zombies im1294.entrance_right matches ..1 run summon minecraft:zombie ~-28 ~23 ~-28 {Tags:["pr.target","im1294.entrance_right"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],HandItems:[{id:"minecraft:bow",Count:1b}],HandDropChances:[0.0f,0.0f],DeathLootTable:"",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],active_effects:[{id:"minecraft:fire_resistance",show_particles:0b,duration:9999}]}
#execute if score im1294.Skeletons im1294.entrance_right matches ..5 run summon skeleton ~-37 ~27 ~6 {Tags:["pr.target","im1294.entrance_right"]}
#execute if score im1294.Spiders im1294.entrance_right matches ..5 run summon spider ~-27 ~30 ~16 {Tags:["pr.target","im1294.entrance_right"]}

execute if score im1294.Zombies im1294.wall_left matches ..1 run summon minecraft:zombie ~24 ~39 ~11 {Tags:["pr.target","im1294.wall_left"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],DeathLootTable:"",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],active_effects:[{id:"minecraft:fire_resistance",show_particles:0b,duration:9999}]}
execute if score im1294.Skeletons im1294.wall_left matches ..1 run summon minecraft:skeleton ~25 ~41 ~21 {Tags:["pr.target","im1294.wall_left"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],HandItems:[{id:"minecraft:bow",Count:1b}],HandDropChances:[0.0f,0.0f],DeathLootTable:"",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],active_effects:[{id:"minecraft:fire_resistance",show_particles:0b,duration:9999}]}
execute if score im1294.Spiders im1294.wall_left matches ..1 run summon minecraft:spider ~25 ~41 ~21 {Tags:["pr.target","im1294.wall_left"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],DeathLootTable:"",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],active_effects:[{id:"minecraft:fire_resistance",show_particles:0b,duration:9999}]}

execute if score im1294.Zombies im1294.floor_left matches ..1 run summon minecraft:zombie ~32 ~33 ~10 {Tags:["pr.target","im1294.floor_left"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],DeathLootTable:"",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],active_effects:[{id:"minecraft:fire_resistance",show_particles:0b,duration:9999}]}
execute if score im1294.Skeletons im1294.floor_left matches ..1 run summon minecraft:skeleton ~36 ~34 ~18 {Tags:["pr.target","im1294.floor_left"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],HandItems:[{id:"minecraft:bow",Count:1b}],HandDropChances:[0.0f,0.0f],DeathLootTable:"",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],active_effects:[{id:"minecraft:fire_resistance",show_particles:0b,duration:9999}]}
execute if score im1294.Spiders im1294.floor_left matches ..1 run summon minecraft:spider ~31 ~39 ~34 {Tags:["pr.target","im1294.floor_left"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],DeathLootTable:"",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],active_effects:[{id:"minecraft:fire_resistance",show_particles:0b,duration:9999}]}

execute if score im1294.Zombies im1294.entrance_left matches ..1 run summon minecraft:zombie ~28 ~25 ~-13 {Tags:["pr.target","im1294.entrance_left"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],DeathLootTable:"",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],active_effects:[{id:"minecraft:fire_resistance",show_particles:0b,duration:9999}]}
execute if score im1294.Skeletons im1294.entrance_left matches ..1 run summon minecraft:skeleton ~37 ~32 ~-12 {Tags:["pr.target","im1294.entrance_left"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],HandItems:[{id:"minecraft:bow",Count:1b}],HandDropChances:[0.0f,0.0f],DeathLootTable:"",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],active_effects:[{id:"minecraft:fire_resistance",show_particles:0b,duration:9999}]}
#execute if score im1294.Spiders im1294.entrance_left matches ..5 run summon spider ~-27 ~30 ~16 {Tags:["pr.target","im1294.entrance_left"]}

execute if score im1294.Zombies im1294.central matches ..1 run summon minecraft:zombie ~6 ~50 ~19 {Tags:["pr.target","im1294.central"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],DeathLootTable:"",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],active_effects:[{id:"minecraft:fire_resistance",show_particles:0b,duration:9999}]}
execute if score im1294.Skeletons im1294.central matches ..1 run summon minecraft:skeleton ~-2 ~48 ~23 {Tags:["pr.target","im1294.central"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],HandItems:[{id:"minecraft:bow",Count:1b}],HandDropChances:[0.0f,0.0f],DeathLootTable:"",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],active_effects:[{id:"minecraft:fire_resistance",show_particles:0b,duration:9999}]}
execute if score im1294.Spiders im1294.central matches ..1 run summon minecraft:spider ~12 ~47 ~34 {Tags:["pr.target","im1294.central"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],DeathLootTable:"",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],active_effects:[{id:"minecraft:fire_resistance",show_particles:0b,duration:9999}]}

execute if score im1294.Zombies im1294.summit matches ..1 run summon minecraft:zombie ~1 ~75 ~6 {Tags:["pr.target","im1294.summit"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],DeathLootTable:"",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],active_effects:[{id:"minecraft:fire_resistance",show_particles:0b,duration:9999}]}
execute if score im1294.Strays im1294.summit matches ..2 run summon minecraft:stray ~12 ~69 ~11 {Tags:["pr.target","im1294.summit"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],HandItems:[{id:"minecraft:bow",Count:1b}],HandDropChances:[0.0f,0.0f],DeathLootTable:"",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],active_effects:[{id:"minecraft:fire_resistance",show_particles:0b,duration:9999}]}

execute if entity @e[type=minecraft:player,y=10,dy=-30,tag=pr.target] run function im1294:spawn_warden
return 1
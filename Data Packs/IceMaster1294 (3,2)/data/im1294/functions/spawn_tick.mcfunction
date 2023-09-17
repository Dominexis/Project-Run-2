#execute positioned ~18 ~39 ~ as @e[type=zombie,dx=2,dy=4,dz=14] run say hi

# First get how many mobs are in each area
# Centered at 65864 0 232
execute store result score im1294.Zombies im1294.wall_right if entity @e[type=zombie,tag=pr.target,tag=im1294.wall_right]
execute store result score im1294.Zombies im1294.floor_right if entity @e[type=zombie,tag=pr.target,tag=im1294.floor_right]
execute store result score im1294.Zombies im1294.entrance_right if entity @e[type=zombie,tag=pr.target,tag=im1294.entrance_right]
execute store result score im1294.Zombies im1294.wall_left if entity @e[type=zombie,tag=pr.target,tag=im1294.wall_left]
execute store result score im1294.Zombies im1294.floor_left if entity @e[type=zombie,tag=pr.target,tag=im1294.floor_left]
execute store result score im1294.Zombies im1294.entrance_left if entity @e[type=zombie,tag=pr.target,tag=im1294.entrance_left]
execute store result score im1294.Zombies im1294.central if entity @e[type=zombie,tag=pr.target,tag=im1294.central]
execute store result score im1294.Zombies im1294.summit if entity @e[type=zombie,tag=pr.target,tag=im1294.summit]

execute store result score im1294.Wardens im1294.central if entity @e[type=warden,tag=pr.target,tag=im1294.central]

execute store result score im1294.Skeletons im1294.wall_right if entity @e[type=skeleton,tag=pr.target,tag=im1294.wall_right]
execute store result score im1294.Skeletons im1294.floor_right if entity @e[type=skeleton,tag=pr.target,tag=im1294.floor_right]
execute store result score im1294.Skeletons im1294.entrance_right if entity @e[type=skeleton,tag=pr.target,tag=im1294.entrance_right]
execute store result score im1294.Skeletons im1294.wall_left if entity @e[type=skeleton,tag=pr.target,tag=im1294.wall_left]
execute store result score im1294.Skeletons im1294.floor_left if entity @e[type=skeleton,tag=pr.target,tag=im1294.floor_left]
execute store result score im1294.Skeletons im1294.entrance_left if entity @e[type=skeleton,tag=pr.target,tag=im1294.entrance_left]
execute store result score im1294.Skeletons im1294.central if entity @e[type=skeleton,tag=pr.target,tag=im1294.central]

execute store result score im1294.Strays im1294.central if entity @e[type=stray,tag=pr.target,tag=im1294.central]

execute store result score im1294.Spiders im1294.wall_right if entity @e[type=spider,tag=pr.target,tag=im1294.wall_right]
execute store result score im1294.Spiders im1294.floor_right if entity @e[type=spider,tag=pr.target,tag=im1294.floor_right]
execute store result score im1294.Spiders im1294.entrance_right if entity @e[type=spider,tag=pr.target,tag=im1294.entrance_right]
execute store result score im1294.Spiders im1294.wall_left if entity @e[type=spider,tag=pr.target,tag=im1294.wall_left]
execute store result score im1294.Spiders im1294.floor_left if entity @e[type=spider,tag=pr.target,tag=im1294.floor_left]
execute store result score im1294.Spiders im1294.entrance_left if entity @e[type=spider,tag=pr.target,tag=im1294.entrance_left]
execute store result score im1294.Spiders im1294.central if entity @e[type=spider,tag=pr.target,tag=im1294.central]

# Now summon more!
execute if score im1294.Zombies im1294.wall_right matches ..5 run summon zombie ~-18 ~40 ~ {Tags:["pr.target","im1294.wall_right"],ActiveEffects:[{Id:12,ShowParticles:0b,Duration:9999}],ArmorItems:[{},{},{},{id:"stone_button",Count:1}]}
execute if score im1294.Skeletons im1294.wall_right matches ..3 run summon skeleton ~-18 ~40 ~3 {Tags:["pr.target","im1294.wall_right"],ActiveEffects:[{Id:12,ShowParticles:0b,Duration:9999}],ArmorItems:[{},{},{},{id:"stone_button",Count:1}],HandItems:[{id:"bow",Count:1}],HandDropChances:[0.00f]}
#execute if score im1294.Spiders im1294.wall_right matches ..3 run summon spider ~-18 ~39 ~10 {Tags:["pr.target","im1294.wall_right"]}

execute if score im1294.Zombies im1294.floor_right matches ..10 run summon zombie ~-31 ~27 ~4 {Tags:["pr.target","im1294.floor_right"],ActiveEffects:[{Id:12,ShowParticles:0b,Duration:9999}],ArmorItems:[{},{},{},{id:"stone_button",Count:1}]}
execute if score im1294.Skeletons im1294.floor_right matches ..5 run summon skeleton ~-37 ~27 ~6 {Tags:["pr.target","im1294.floor_right"],ActiveEffects:[{Id:12,ShowParticles:0b,Duration:9999}],ArmorItems:[{},{},{},{id:"stone_button",Count:1}],HandItems:[{id:"bow",Count:1}],HandDropChances:[0.00f]}
#execute if score im1294.Spiders im1294.floor_right matches ..5 run summon spider ~-27 ~30 ~16 {Tags:["pr.target","im1294.floor_right"]}

execute if score im1294.Zombies im1294.entrance_right matches ..5 run summon zombie ~-28 ~23 ~-28 {Tags:["pr.target","im1294.entrance_right"],ActiveEffects:[{Id:12,ShowParticles:0b,Duration:9999}],ArmorItems:[{},{},{},{id:"stone_button",Count:1}],HandItems:[{id:"bow",Count:1}],HandDropChances:[0.00f]}
#execute if score im1294.Skeletons im1294.entrance_right matches ..5 run summon skeleton ~-37 ~27 ~6 {Tags:["pr.target","im1294.entrance_right"]}
#execute if score im1294.Spiders im1294.entrance_right matches ..5 run summon spider ~-27 ~30 ~16 {Tags:["pr.target","im1294.entrance_right"]}

execute if score im1294.Zombies im1294.wall_left matches ..5 run summon zombie ~24 ~39 ~11 {Tags:["pr.target","im1294.wall_left"],ActiveEffects:[{Id:12,ShowParticles:0b,Duration:9999}],ArmorItems:[{},{},{},{id:"stone_button",Count:1}]}
execute if score im1294.Skeletons im1294.wall_left matches ..4 run summon skeleton ~25 ~41 ~21 {Tags:["pr.target","im1294.wall_left"],ActiveEffects:[{Id:12,ShowParticles:0b,Duration:9999}],ArmorItems:[{},{},{},{id:"stone_button",Count:1}],HandItems:[{id:"bow",Count:1}],HandDropChances:[0.00f]}
execute if score im1294.Spiders im1294.wall_left matches ..3 run summon spider ~25 ~41 ~21 {Tags:["pr.target","im1294.wall_left"],ActiveEffects:[{Id:12,ShowParticles:0b,Duration:9999}],ArmorItems:[{},{},{},{id:"stone_button",Count:1}]}

execute if score im1294.Zombies im1294.floor_left matches ..10 run summon zombie ~32 ~33 ~10 {Tags:["pr.target","im1294.floor_left"],ActiveEffects:[{Id:12,ShowParticles:0b,Duration:9999}],ArmorItems:[{},{},{},{id:"stone_button",Count:1}]}
execute if score im1294.Skeletons im1294.floor_left matches ..5 run summon skeleton ~36 ~34 ~18 {Tags:["pr.target","im1294.floor_left"],ActiveEffects:[{Id:12,ShowParticles:0b,Duration:9999}],ArmorItems:[{},{},{},{id:"stone_button",Count:1}],HandItems:[{id:"bow",Count:1}],HandDropChances:[0.00f]}
execute if score im1294.Spiders im1294.floor_left matches ..5 run summon spider ~31 ~39 ~34 {Tags:["pr.target","im1294.floor_left"],ActiveEffects:[{Id:12,ShowParticles:0b,Duration:9999}],ArmorItems:[{},{},{},{id:"stone_button",Count:1}]}

execute if score im1294.Zombies im1294.entrance_left matches ..5 run summon zombie ~28 ~25 ~-13 {Tags:["pr.target","im1294.entrance_left"],ActiveEffects:[{Id:12,ShowParticles:0b,Duration:9999}],ArmorItems:[{},{},{},{id:"stone_button",Count:1}]}
execute if score im1294.Skeletons im1294.entrance_left matches ..5 run summon skeleton ~37 ~32 ~-12 {Tags:["pr.target","im1294.entrance_left"],ActiveEffects:[{Id:12,ShowParticles:0b,Duration:9999}],ArmorItems:[{},{},{},{id:"stone_button",Count:1}],HandItems:[{id:"bow",Count:1}],HandDropChances:[0.00f]}
#execute if score im1294.Spiders im1294.entrance_left matches ..5 run summon spider ~-27 ~30 ~16 {Tags:["pr.target","im1294.entrance_left"]}

execute if score im1294.Zombies im1294.central matches ..5 run summon zombie ~6 ~50 ~19 {Tags:["pr.target","im1294.central"],ActiveEffects:[{Id:12,ShowParticles:0b,Duration:9999}],ArmorItems:[{},{},{},{id:"stone_button",Count:1}]}
execute if score im1294.Skeletons im1294.central matches ..5 run summon skeleton ~-2 ~48 ~23 {Tags:["pr.target","im1294.central"],ActiveEffects:[{Id:12,ShowParticles:0b,Duration:9999}],ArmorItems:[{},{},{},{id:"stone_button",Count:1}],HandItems:[{id:"bow",Count:1}],HandDropChances:[0.00f]}
execute if score im1294.Spiders im1294.central matches ..5 run summon spider ~12 ~47 ~34 {Tags:["pr.target","im1294.central"],ActiveEffects:[{Id:12,ShowParticles:0b,Duration:9999}],ArmorItems:[{},{},{},{id:"stone_button",Count:1}]}

execute if score im1294.Zombies im1294.summit matches ..5 run summon zombie ~1 ~75 ~6 {Tags:["pr.target","im1294.summit"],ActiveEffects:[{Id:12,ShowParticles:0b,Duration:9999}],ArmorItems:[{},{},{},{id:"stone_button",Count:1}]}
execute if score im1294.Strays im1294.summit matches ..5 run summon stray ~12 ~69 ~11 {Tags:["pr.target","im1294.summit"],ActiveEffects:[{Id:12,ShowParticles:0b,Duration:9999}],ArmorItems:[{},{},{},{id:"stone_button",Count:1}],HandItems:[{id:"bow",Count:1}],HandDropChances:[0.00f]}

execute if score im1294.Wardens im1294.central matches ..3 run summon warden ~-15 ~1 ~1 {Tags:["pr.target","im1294.central"],Invulnerable:1b}
execute if score im1294.Wardens im1294.central matches ..3 run summon warden ~-20 ~4 ~7 {Tags:["pr.target","im1294.central"],Invulnerable:1b}
execute if score im1294.Wardens im1294.central matches ..3 run summon warden ~-15 ~1 ~13 {Tags:["pr.target","im1294.central"],Invulnerable:1b}
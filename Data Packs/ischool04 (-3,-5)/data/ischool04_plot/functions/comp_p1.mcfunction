tag @a[tag=!plvl1,tag=pr.target,scores={isch.prbt=2}] add plvl1
execute at @e[tag=RoBa2,tag=pr.target] run fill ~ ~-1 ~ ~1 ~-4 ~ minecraft:air destroy
execute at @a[tag=pr.target] run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~ 1 0 1
effect give @a[tag=pr.target] minecraft:blindness 1 1 true
execute at @e[tag=MMmc1,tag=pr.target] run summon minecraft:magma_cube ~ ~ ~ {PersistenceRequired:1b,Silent:0b,CustomNameVisible:1b,DeathLootTable:"air",NoAI:1b,Health:50.0f,Size:0,Tags:["pr.target","Mmc1"],CustomName:'{"text":"Defender Cube","color":"yellow","bold":true,"type":"text"}',Attributes:[{Name:"minecraft:generic.max_health",Base:24.0d}],active_effects:[{id:"minecraft:resistance",amplifier:2b,duration:999999,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:1b,duration:999999,show_particles:1b}]}
execute at @e[tag=MMmc2,tag=pr.target] run summon minecraft:magma_cube ~ ~ ~ {PersistenceRequired:1b,Silent:0b,CustomNameVisible:1b,DeathLootTable:"air",NoAI:1b,Health:50.0f,Size:0,Tags:["pr.target","Mmc2"],CustomName:'{"text":"Defender Cube","color":"yellow","bold":true,"type":"text"}',Attributes:[{Name:"minecraft:generic.max_health",Base:24.0d}],active_effects:[{id:"minecraft:resistance",amplifier:2b,duration:999999,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:1b,duration:999999,show_particles:1b}]}
execute at @e[tag=MMzp1,tag=pr.target] run summon minecraft:zombified_piglin ~ ~ ~ {PersistenceRequired:1b,Silent:0b,AngerTime:90000000,CustomNameVisible:1b,DeathLootTable:"air",NoAI:0b,Health:500000.0f,Tags:["pr.target","Mzp1,melee.mob"],CustomName:'{"text":"Elite Henchman","color":"gold","bold":true,"type":"text"}',HandItems:[{id:"minecraft:netherite_sword",tag:{Unbreakable:1b},Count:1b},{id:"minecraft:shield",tag:{Unbreakable:1b,Enchantments:[{}]},Count:1b}],HandDropChances:[0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",tag:{Unbreakable:1b,Trim:{material:"minecraft:gold",pattern:"minecraft:rib"}},Count:1b}],ArmorDropChances:[0.085f,0.085f,0.085f,0.0f],Attributes:[{Name:"minecraft:generic.max_health",Base:45.0d},{Name:"minecraft:generic.attack_damage",Base:11.0d},{Name:"minecraft:generic.knockback_resistance",Base:0.4d}]}
execute at @e[tag=MMzp2,tag=pr.target] run summon minecraft:zombified_piglin ~ ~ ~ {PersistenceRequired:1b,Silent:0b,AngerTime:90000000,CustomNameVisible:1b,DeathLootTable:"air",NoAI:0b,Health:500000.0f,Tags:["pr.target","Mzp2,melee.mob"],CustomName:'{"text":"Elite Henchman","color":"gold","bold":true,"type":"text"}',HandItems:[{id:"minecraft:netherite_sword",tag:{Unbreakable:1b},Count:1b},{id:"minecraft:shield",tag:{Unbreakable:1b,Enchantments:[{}]},Count:1b}],HandDropChances:[0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",tag:{Unbreakable:1b,Trim:{material:"minecraft:gold",pattern:"minecraft:rib"}},Count:1b}],ArmorDropChances:[0.085f,0.085f,0.085f,0.0f],Attributes:[{Name:"minecraft:generic.max_health",Base:45.0d},{Name:"minecraft:generic.attack_damage",Base:11.0d},{Name:"minecraft:generic.knockback_resistance",Base:0.4d}]}
execute at @e[tag=MMzp3,tag=pr.target] run summon minecraft:zombified_piglin ~ ~ ~ {PersistenceRequired:1b,Silent:0b,AngerTime:90000000,CustomNameVisible:1b,DeathLootTable:"air",NoAI:0b,Health:500000.0f,Tags:["pr.target","Mzp3,melee.mob"],CustomName:'{"text":"Elite Henchman","color":"gold","bold":true,"type":"text"}',HandItems:[{id:"minecraft:netherite_sword",tag:{Unbreakable:1b},Count:1b},{id:"minecraft:shield",tag:{Unbreakable:1b,Enchantments:[{}]},Count:1b}],HandDropChances:[0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",tag:{Unbreakable:1b,Trim:{material:"minecraft:gold",pattern:"minecraft:rib"}},Count:1b}],ArmorDropChances:[0.085f,0.085f,0.085f,0.0f],Attributes:[{Name:"minecraft:generic.max_health",Base:45.0d},{Name:"minecraft:generic.attack_damage",Base:11.0d},{Name:"minecraft:generic.knockback_resistance",Base:0.4d}]}
execute at @e[tag=MMzp4,tag=pr.target] run summon minecraft:zombified_piglin ~ ~ ~ {PersistenceRequired:1b,Silent:0b,AngerTime:90000000,CustomNameVisible:1b,DeathLootTable:"air",NoAI:0b,Health:500000.0f,Tags:["pr.target","Mzp4,melee.mob"],CustomName:'{"text":"Elite Henchman","color":"gold","bold":true,"type":"text"}',HandItems:[{id:"minecraft:netherite_sword",tag:{Unbreakable:1b},Count:1b},{id:"minecraft:shield",tag:{Unbreakable:1b,Enchantments:[{}]},Count:1b}],HandDropChances:[0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",tag:{Unbreakable:1b,Trim:{material:"minecraft:gold",pattern:"minecraft:rib"}},Count:1b}],ArmorDropChances:[0.085f,0.085f,0.085f,0.0f],Attributes:[{Name:"minecraft:generic.max_health",Base:45.0d},{Name:"minecraft:generic.attack_damage",Base:11.0d},{Name:"minecraft:generic.knockback_resistance",Base:0.4d}]}
execute at @e[tag=MMzp5,tag=pr.target] run summon minecraft:zombified_piglin ~ ~ ~ {PersistenceRequired:1b,Silent:0b,AngerTime:90000000,CustomNameVisible:1b,DeathLootTable:"air",NoAI:0b,Health:500000.0f,Tags:["pr.target","Mzp5,melee.mob"],CustomName:'{"text":"Elite Henchman","color":"gold","bold":true,"type":"text"}',HandItems:[{id:"minecraft:netherite_sword",tag:{Unbreakable:1b},Count:1b},{id:"minecraft:shield",tag:{Unbreakable:1b,Enchantments:[{}]},Count:1b}],HandDropChances:[0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",tag:{Unbreakable:1b,Trim:{material:"minecraft:gold",pattern:"minecraft:rib"}},Count:1b}],ArmorDropChances:[0.085f,0.085f,0.085f,0.0f],Attributes:[{Name:"minecraft:generic.max_health",Base:45.0d},{Name:"minecraft:generic.attack_damage",Base:11.0d},{Name:"minecraft:generic.knockback_resistance",Base:0.4d}]}
execute at @e[tag=MMws1,tag=pr.target] run summon minecraft:wither_skeleton ~ ~ ~ {PersistenceRequired:1b,HasVisualFire:1b,CustomNameVisible:1b,DeathLootTable:"air",Health:500.0f,Tags:["pr.target","Mws1"],CustomName:'{"text":"Elite Shooter","color":"gold","bold":true,"type":"text"}',HandItems:[{id:"minecraft:bow",tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:2s}]},Count:1b},{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:poison"},Count:1b}],HandDropChances:[0.0f,0.0f],ArmorItems:[{},{},{id:"minecraft:netherite_chestplate",tag:{Unbreakable:1b},Count:1b},{id:"minecraft:golden_helmet",tag:{Unbreakable:1b,Enchantments:[{}],Trim:{material:"minecraft:netherite",pattern:"minecraft:silence"}},Count:1b}],ArmorDropChances:[0.085f,0.085f,0.0f,0.0f],Attributes:[{Name:"minecraft:generic.max_health",Base:10.0d},{Name:"minecraft:generic.knockback_resistance",Base:1.0d}],active_effects:[{id:"minecraft:regeneration",amplifier:2b,duration:999999,show_particles:0b}]}
execute at @e[tag=MMws2,tag=pr.target] run summon minecraft:wither_skeleton ~ ~ ~ {PersistenceRequired:1b,HasVisualFire:1b,CustomNameVisible:1b,DeathLootTable:"air",Health:500.0f,Tags:["pr.target","Mws2"],CustomName:'{"text":"Elite Shooter","color":"gold","bold":true,"type":"text"}',HandItems:[{id:"minecraft:bow",tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:2s}]},Count:1b},{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:poison"},Count:1b}],HandDropChances:[0.0f,0.0f],ArmorItems:[{},{},{id:"minecraft:netherite_chestplate",tag:{Unbreakable:1b},Count:1b},{id:"minecraft:golden_helmet",tag:{Unbreakable:1b,Enchantments:[{}],Trim:{material:"minecraft:netherite",pattern:"minecraft:silence"}},Count:1b}],ArmorDropChances:[0.085f,0.085f,0.0f,0.0f],Attributes:[{Name:"minecraft:generic.max_health",Base:10.0d},{Name:"minecraft:generic.knockback_resistance",Base:1.0d}],active_effects:[{id:"minecraft:regeneration",amplifier:2b,duration:999999,show_particles:0b}]}
execute at @e[tag=MMws3,tag=pr.target] run summon minecraft:wither_skeleton ~ ~ ~ {PersistenceRequired:1b,HasVisualFire:1b,CustomNameVisible:1b,DeathLootTable:"air",Health:500.0f,Tags:["pr.target","Mws3"],CustomName:'{"text":"Elite Shooter","color":"gold","bold":true,"type":"text"}',HandItems:[{id:"minecraft:bow",tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:2s}]},Count:1b},{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:poison"},Count:1b}],HandDropChances:[0.0f,0.0f],ArmorItems:[{},{},{id:"minecraft:netherite_chestplate",tag:{Unbreakable:1b},Count:1b},{id:"minecraft:golden_helmet",tag:{Unbreakable:1b,Enchantments:[{}],Trim:{material:"minecraft:netherite",pattern:"minecraft:silence"}},Count:1b}],ArmorDropChances:[0.085f,0.085f,0.0f,0.0f],Attributes:[{Name:"minecraft:generic.max_health",Base:10.0d},{Name:"minecraft:generic.knockback_resistance",Base:1.0d}],active_effects:[{id:"minecraft:regeneration",amplifier:2b,duration:999999,show_particles:0b}]}
execute at @e[tag=MMws4,tag=pr.target] run summon minecraft:wither_skeleton ~ ~ ~ {PersistenceRequired:1b,HasVisualFire:1b,CustomNameVisible:1b,DeathLootTable:"air",Health:500.0f,Tags:["pr.target","Mws4"],CustomName:'{"text":"Elite Shooter","color":"gold","bold":true,"type":"text"}',HandItems:[{id:"minecraft:bow",tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:2s}]},Count:1b},{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:poison"},Count:1b}],HandDropChances:[0.0f,0.0f],ArmorItems:[{},{},{id:"minecraft:netherite_chestplate",tag:{Unbreakable:1b},Count:1b},{id:"minecraft:golden_helmet",tag:{Unbreakable:1b,Enchantments:[{}],Trim:{material:"minecraft:netherite",pattern:"minecraft:silence"}},Count:1b}],ArmorDropChances:[0.085f,0.085f,0.0f,0.0f],Attributes:[{Name:"minecraft:generic.max_health",Base:10.0d},{Name:"minecraft:generic.knockback_resistance",Base:1.0d}],active_effects:[{id:"minecraft:regeneration",amplifier:2b,duration:999999,show_particles:0b}]}
execute at @e[tag=MMzpa1,tag=pr.target] run summon minecraft:zombified_piglin ~ ~ ~ {PersistenceRequired:1b,HasVisualFire:1b,Silent:0b,CustomNameVisible:1b,DeathLootTable:"air",NoAI:0b,Health:500000.0f,AngerTime:2,Tags:["pr.target","Mzpa1,melee.mob"],CustomName:'{"text":"Grand Elite Henchman","color":"dark_red","bold":true,"type":"text"}',HandItems:[{id:"minecraft:netherite_sword",tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:9s}]},Count:1b},{id:"minecraft:netherite_sword",tag:{Unbreakable:1b,Enchantments:[{}]},Count:1b}],HandDropChances:[0.0f,0.0f],ArmorItems:[{},{id:"minecraft:netherite_leggings",tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],Trim:{material:"minecraft:gold",pattern:"minecraft:rib"}},Count:1b},{},{id:"minecraft:netherite_helmet",tag:{Unbreakable:1b,Enchantments:[{}],Trim:{material:"minecraft:gold",pattern:"minecraft:rib"}},Count:1b}],ArmorDropChances:[0.085f,0.085f,0.085f,0.0f],Attributes:[{Name:"minecraft:generic.max_health",Base:30.0d},{Name:"minecraft:generic.knockback_resistance",Base:0.5d},{Name:"minecraft:generic.attack_damage",Base:11.0d}],active_effects:[{id:"minecraft:resistance",amplifier:1b,duration:999999,show_particles:0b}]}
execute at @e[tag=MMzpa2,tag=pr.target] run summon minecraft:zombified_piglin ~ ~ ~ {PersistenceRequired:1b,HasVisualFire:1b,Silent:0b,CustomNameVisible:1b,DeathLootTable:"air",NoAI:0b,Health:500000.0f,AngerTime:2,Tags:["pr.target","Mzpa2,melee.mob"],CustomName:'{"text":"Grand Elite Henchman","color":"dark_red","bold":true,"type":"text"}',HandItems:[{id:"minecraft:netherite_sword",tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:9s}]},Count:1b},{id:"minecraft:netherite_sword",tag:{Unbreakable:1b,Enchantments:[{}]},Count:1b}],HandDropChances:[0.0f,0.0f],ArmorItems:[{},{id:"minecraft:netherite_leggings",tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],Trim:{material:"minecraft:gold",pattern:"minecraft:rib"}},Count:1b},{},{id:"minecraft:netherite_helmet",tag:{Unbreakable:1b,Enchantments:[{}],Trim:{material:"minecraft:gold",pattern:"minecraft:rib"}},Count:1b}],ArmorDropChances:[0.085f,0.085f,0.085f,0.0f],Attributes:[{Name:"minecraft:generic.max_health",Base:30.0d},{Name:"minecraft:generic.knockback_resistance",Base:0.5d},{Name:"minecraft:generic.attack_damage",Base:11.0d}],active_effects:[{id:"minecraft:resistance",amplifier:1b,duration:999999,show_particles:0b}]}
execute at @e[tag=MMzpa3,tag=pr.target] run summon minecraft:zombified_piglin ~ ~ ~ {PersistenceRequired:1b,HasVisualFire:1b,Silent:0b,CustomNameVisible:1b,DeathLootTable:"air",NoAI:0b,Health:500000.0f,AngerTime:2,Tags:["pr.target","Mzpa3,melee.mob"],CustomName:'{"text":"Grand Elite Henchman","color":"dark_red","bold":true,"type":"text"}',HandItems:[{id:"minecraft:netherite_sword",tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:9s}]},Count:1b},{id:"minecraft:netherite_sword",tag:{Unbreakable:1b,Enchantments:[{}]},Count:1b}],HandDropChances:[0.0f,0.0f],ArmorItems:[{},{id:"minecraft:netherite_leggings",tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],Trim:{material:"minecraft:gold",pattern:"minecraft:rib"}},Count:1b},{},{id:"minecraft:netherite_helmet",tag:{Unbreakable:1b,Enchantments:[{}],Trim:{material:"minecraft:gold",pattern:"minecraft:rib"}},Count:1b}],ArmorDropChances:[0.085f,0.085f,0.085f,0.0f],Attributes:[{Name:"minecraft:generic.max_health",Base:30.0d},{Name:"minecraft:generic.knockback_resistance",Base:0.5d},{Name:"minecraft:generic.attack_damage",Base:11.0d}],active_effects:[{id:"minecraft:resistance",amplifier:1b,duration:999999,show_particles:0b}]}
execute at @e[tag=MMzpa4,tag=pr.target] run summon minecraft:zombified_piglin ~ ~ ~ {PersistenceRequired:1b,HasVisualFire:1b,Silent:0b,CustomNameVisible:1b,DeathLootTable:"air",NoAI:0b,Health:500000.0f,AngerTime:2,Tags:["pr.target","Mzpa4,melee.mob"],CustomName:'{"text":"Grand Elite Henchman","color":"dark_red","bold":true,"type":"text"}',HandItems:[{id:"minecraft:netherite_sword",tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:9s}]},Count:1b},{id:"minecraft:netherite_sword",tag:{Unbreakable:1b,Enchantments:[{}]},Count:1b}],HandDropChances:[0.0f,0.0f],ArmorItems:[{},{id:"minecraft:netherite_leggings",tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],Trim:{material:"minecraft:gold",pattern:"minecraft:rib"}},Count:1b},{},{id:"minecraft:netherite_helmet",tag:{Unbreakable:1b,Enchantments:[{}],Trim:{material:"minecraft:gold",pattern:"minecraft:rib"}},Count:1b}],ArmorDropChances:[0.085f,0.085f,0.085f,0.0f],Attributes:[{Name:"minecraft:generic.max_health",Base:30.0d},{Name:"minecraft:generic.knockback_resistance",Base:0.5d},{Name:"minecraft:generic.attack_damage",Base:11.0d}],active_effects:[{id:"minecraft:resistance",amplifier:1b,duration:999999,show_particles:0b}]}
execute at @e[tag=Bcomp,tag=pr.target] run summon minecraft:blaze ~ ~ ~ {PersistenceRequired:1b,HasVisualFire:1,NoGravity:1b,Silent:0b,CustomNameVisible:1b,DeathLootTable:"air",NoAI:0b,Health:500000.0f,Tags:["pr.target","Mbzc1"],CustomName:'{"text":"Infernal Turret","color":"yellow","bold":true,"type":"text"}',Attributes:[{Name:"minecraft:generic.max_health",Base:30.0d},{Name:"minecraft:generic.knockback_resistance",Base:1.0d},{Name:"minecraft:generic.attack_damage",Base:60.0d},{Name:"minecraft:generic.follow_range",Base:300.0d},{Name:"minecraft:generic.max_health",Base:20.0d}],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:9999999,show_particles:1b}]}
tag @e[type=minecraft:zombified_piglin,tag=pr.target] add melee.mob
tag @e[type=minecraft:magma_cube,tag=pr.target] add Mmc
title @a[tag=pr.target] times 20 100 20
title @a[tag=pr.target] subtitle ["",{"text":"\u2714","color":"dark_green","type":"text"},{"text":" A Path Has Been Unlocked","bold":true,"color":"green","type":"text"},{"text":" \u2714","color":"dark_green","type":"text"}]
title @a[tag=pr.target] title {"text":"","type":"text"}
execute as @a[tag=!never.fdamage,tag=pr.target] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
execute as @a[tag=!never.fdamage,tag=pr.target] run tellraw @s ["",{"text":"[Tip]:","bold":true,"color":"yellow","type":"text"},{"text":" Jump just before the fire platforms burn you in order to avoid being damaged. ","bold":true,"color":"green","type":"text"}]
execute as @a[tag=!never.fdamage,tag=pr.target] run tag @s add never.fdamage
tag @a[tag=pr.target,tag=part1] remove part1
tag @a[tag=pr.target] add part2
# execute at @e[tag=check2,tag=pr.target] run function pr:player/checkpoint/mark_pos
return 1

#Call function to summon random mob at position
function zombie1111:getrandomnumber
scoreboard players operation rValue zombie_rngV %= C_7 zombie_rngC
execute if score rValue zombie_rngV matches 0 run summon minecraft:zombie ~0.000 ~ ~ {Tags:["zombiePlot","zombieNew","pr.target"],Passengers:[{id:"minecraft:marker",Tags:["zombiePlot","zombieDeathPos"]}],Health:40000.0f,Attributes:[{Name:"minecraft:generic.max_health",Base:40000.0d}],DeathLootTable:"zombie1111:nomobdrops",active_effects:[{id:"minecraft:resistance",amplifier:3b,duration:1388400,show_particles:0b}]}
execute if score rValue zombie_rngV matches 1 run summon minecraft:skeleton ~0.0 ~ ~ {Tags:["zombiePlot","zombieNew","pr.target"],Passengers:[{id:"minecraft:marker",Tags:["zombiePlot","zombieDeathPos"]}],Health:40000.0f,Attributes:[{Name:"minecraft:generic.max_health",Base:40000.0d}],DeathLootTable:"zombie1111:nomobdrops",HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.0f,0.085f],active_effects:[{id:"minecraft:resistance",amplifier:3b,duration:1388400,show_particles:0b}]}
execute if score rValue zombie_rngV matches 2 run summon minecraft:creeper ~0.00 ~ ~ {Tags:["zombiePlot","zombieNew","pr.target"],Passengers:[{id:"minecraft:marker",Tags:["zombiePlot","zombieDeathPos"]}],Health:40000.0f,Attributes:[{Name:"minecraft:generic.max_health",Base:40000.0d}],DeathLootTable:"zombie1111:nomobdrops",active_effects:[{id:"minecraft:resistance",amplifier:3b,duration:1388400,show_particles:0b}]}
execute if score rValue zombie_rngV matches 3 run summon minecraft:cave_spider ~ ~ ~ {Tags:["zombiePlot","zombieNew","pr.target"],Passengers:[{id:"minecraft:marker",Tags:["zombiePlot","zombieDeathPos"]}],Health:40000.0f,Attributes:[{Name:"minecraft:generic.max_health",Base:40000.0d}],DeathLootTable:"zombie1111:nomobdrops",active_effects:[{id:"minecraft:resistance",amplifier:3b,duration:1388400,show_particles:0b}]}
execute if score rValue zombie_rngV matches 4 run summon minecraft:pillager ~0.0 ~ ~ {Tags:["zombiePlot","zombieNew","pr.target"],Passengers:[{id:"minecraft:marker",Tags:["zombiePlot","zombieDeathPos"]}],Health:40000.0f,Attributes:[{Name:"minecraft:generic.max_health",Base:40000.0d}],DeathLootTable:"zombie1111:nomobdrops",HandItems:[{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]},Count:1b},{}],HandDropChances:[0.0f,0.0f],active_effects:[{id:"minecraft:resistance",amplifier:3b,duration:1388400,show_particles:0b}]}
execute if score rValue zombie_rngV matches 5 run summon minecraft:husk ~0.00000 ~ ~ {Tags:["zombiePlot","zombieNew","pr.target"],Passengers:[{id:"minecraft:marker",Tags:["zombiePlot","zombieDeathPos"]}],Health:40000.0f,Attributes:[{Name:"minecraft:generic.max_health",Base:40000.0d}],DeathLootTable:"zombie1111:nomobdrops",active_effects:[{id:"minecraft:resistance",amplifier:3b,duration:1388400,show_particles:0b}]}
execute if score rValue zombie_rngV matches 6 run summon minecraft:stray ~0.0000 ~ ~ {Tags:["zombiePlot","zombieNew","pr.target"],Passengers:[{id:"minecraft:marker",Tags:["zombiePlot","zombieDeathPos"]}],Health:40000.0f,Attributes:[{Name:"minecraft:generic.max_health",Base:40000.0d}],DeathLootTable:"zombie1111:nomobdrops",HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.0f,0.0f],active_effects:[{id:"minecraft:resistance",amplifier:3b,duration:1388400,show_particles:0b}]}
execute as @e[tag=zombieNew,tag=pr.target,limit=1] run function zombie1111:summon_mobconfigure
function zombie1111:summon_try






return 1
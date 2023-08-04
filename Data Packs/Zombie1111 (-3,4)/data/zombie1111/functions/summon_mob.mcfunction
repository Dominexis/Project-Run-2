
#Call function to summon random mob at position
function zombie1111:getrandomnumber
scoreboard players operation rValue zombie_rngV %= C_7 zombie_rngC
execute if score rValue zombie_rngV matches 0 run summon zombie ~0.000 ~ ~ {Tags:["zombiePlot", "zombieNew"], Passengers:[{id:"marker",Tags:["zombiePlot","zombieDeathPos"]}],Health:40000f,Attributes:[{Name:"generic.max_health",Base:40000}],ActiveEffects:[{Id:11,Amplifier:3b,Duration:1388400,ShowParticles:0b}], DeathLootTable:"zombie1111:nomobdrops"}
execute if score rValue zombie_rngV matches 1 run summon skeleton ~0.0 ~ ~ {Tags:["zombiePlot", "zombieNew"], Passengers:[{id:"marker",Tags:["zombiePlot","zombieDeathPos"]}],Health:40000f,Attributes:[{Name:"generic.max_health",Base:40000}],ActiveEffects:[{Id:11,Amplifier:3b,Duration:1388400,ShowParticles:0b}], DeathLootTable:"zombie1111:nomobdrops", HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F]}
execute if score rValue zombie_rngV matches 2 run summon creeper ~0.00 ~ ~ {Tags:["zombiePlot", "zombieNew"], Passengers:[{id:"marker",Tags:["zombiePlot","zombieDeathPos"]}],Health:40000f,Attributes:[{Name:"generic.max_health",Base:40000}],ActiveEffects:[{Id:11,Amplifier:3b,Duration:1388400,ShowParticles:0b}], DeathLootTable:"zombie1111:nomobdrops"}
execute if score rValue zombie_rngV matches 3 run summon cave_spider ~ ~ ~ {Tags:["zombiePlot", "zombieNew"], Passengers:[{id:"marker",Tags:["zombiePlot","zombieDeathPos"]}],Health:40000f,Attributes:[{Name:"generic.max_health",Base:40000}],ActiveEffects:[{Id:11,Amplifier:3b,Duration:1388400,ShowParticles:0b}], DeathLootTable:"zombie1111:nomobdrops"}
execute if score rValue zombie_rngV matches 4 run summon pillager ~0.0 ~ ~ {Tags:["zombiePlot", "zombieNew"], Passengers:[{id:"marker",Tags:["zombiePlot","zombieDeathPos"]}],Health:40000f,Attributes:[{Name:"generic.max_health",Base:40000}],ActiveEffects:[{Id:11,Amplifier:3b,Duration:1388400,ShowParticles:0b}], DeathLootTable:"zombie1111:nomobdrops", HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}},{}],HandDropChances:[0.000F,0.000F]}
execute if score rValue zombie_rngV matches 5 run summon husk ~0.00000 ~ ~ {Tags:["zombiePlot", "zombieNew"], Passengers:[{id:"marker",Tags:["zombiePlot","zombieDeathPos"]}],Health:40000f,Attributes:[{Name:"generic.max_health",Base:40000}],ActiveEffects:[{Id:11,Amplifier:3b,Duration:1388400,ShowParticles:0b}], DeathLootTable:"zombie1111:nomobdrops"}
execute if score rValue zombie_rngV matches 6 run summon stray ~0.0000 ~ ~ {Tags:["zombiePlot", "zombieNew"], Passengers:[{id:"marker",Tags:["zombiePlot","zombieDeathPos"]}],Health:40000f,Attributes:[{Name:"generic.max_health",Base:40000}],ActiveEffects:[{Id:11,Amplifier:3b,Duration:1388400,ShowParticles:0b}], DeathLootTable:"zombie1111:nomobdrops", HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.000F]}
execute as @e[tag=zombieNew,limit=1] run function zombie1111:summon_mobconfigure 
function zombie1111:summon_try






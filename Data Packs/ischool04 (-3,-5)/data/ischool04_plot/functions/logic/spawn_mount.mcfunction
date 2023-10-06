execute at @s run summon horse ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:'{"text":"Bloody Beast","color":"white","bold":true}',DeathLootTable:"air",NoAI:1b,Tame:0b,Tags:["pr.target","isch.target","Czg"],ActiveEffects:[{Id:8,Amplifier:2b,Duration:999999,ShowParticles:0b},{Id:14,Amplifier:1b,Duration:999999,ShowParticles:0b}],Attributes:[{Name:generic.movement_speed,Base:0.09},{Name:horse.jump_strength,Base:0.35}],SaddleItem:{id:"minecraft:saddle",Count:1b},ArmorItem:{}}
execute at @s run summon zoglin ~ ~ ~ {PersistenceRequired:1b,HasVisualFire:0b,Silent:0b,Invulnerable:1b,CustomNameVisible:1b,DeathLootTable:"air",NoAI:1b,Tags:["pr.target","isch.target","Rzg"],CustomName:'{"text":"Bloody Beast","color":"white","bold":true}',ActiveEffects:[{Id:5,Amplifier:1b,Duration:999999,ShowParticles:1b}],Attributes:[{Name:generic.knockback_resistance,Base:1}]}

scoreboard players operation @e[tag=pr.target,tag=isch.target] isch.id = @s isch.id
tp @e[tag=pr.target,tag=isch.target] @s

tag @e[tag=pr.target] remove isch.target

function ischool04_plot:logic/ride
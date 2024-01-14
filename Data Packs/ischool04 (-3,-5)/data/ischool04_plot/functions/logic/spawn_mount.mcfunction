execute at @s run summon minecraft:horse ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:'{"text":"Bloody Beast","color":"white","bold":true,"type":"text"}',DeathLootTable:"air",NoAI:1b,Tame:0b,Tags:["pr.target","isch.target","Czg"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.09d},{Name:"minecraft:horse.jump_strength",Base:0.35d}],SaddleItem:{id:"minecraft:saddle",Count:1b},ArmorItem:{},active_effects:[{id:"minecraft:jump_boost",amplifier:2b,duration:999999,show_particles:0b},{id:"minecraft:invisibility",amplifier:1b,duration:999999,show_particles:0b}]}
execute at @s run summon minecraft:zoglin ~ ~ ~ {PersistenceRequired:1b,HasVisualFire:0b,Silent:0b,Invulnerable:1b,CustomNameVisible:1b,DeathLootTable:"air",NoAI:1b,Tags:["pr.target","isch.target","Rzg"],CustomName:'{"text":"Bloody Beast","color":"white","bold":true,"type":"text"}',Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1.0d}],active_effects:[{id:"minecraft:strength",amplifier:1b,duration:999999,show_particles:1b}]}

scoreboard players operation @e[tag=pr.target,tag=isch.target] isch.id = @s isch.id
tp @e[tag=pr.target,tag=isch.target] @s

tag @e[tag=pr.target] remove isch.target

function ischool04_plot:logic/ride
return 1
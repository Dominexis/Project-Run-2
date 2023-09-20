execute at @s at @e[tag=Rzg,limit=1,sort=nearest] run tp @e[tag=Rzg,limit=1,sort=nearest] ~ ~-100 ~
execute at @s at @e[tag=Czg,limit=1,sort=nearest] run tp @e[tag=Czg,limit=1,sort=nearest] ~ ~-100 ~
execute at @s run kill @e[tag=Czg,limit=1,sort=nearest]
execute at @s run kill @a[tag=Rzg,limit=1,sort=nearest]
execute at @s run summon summon zoglin ~ ~ ~ {HasVisualFire:0b,Silent:0b,Invulnerable:1b,CustomNameVisible:1b,DeathLootTable:"air",NoAI:1b,Tags:["Rzg"],CustomName:'{"text":"Bloody Beast","color":"white","bold":true}',ActiveEffects:[{Id:5,Amplifier:1b,Duration:999999,ShowParticles:1b}],Attributes:[{Name:generic.knockback_resistance,Base:1}]}
execute at @s run summon horse ~ ~ ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:'{"text":"Bloody Beast","color":"white","bold":true}',DeathLootTable:"air",NoAI:1b,Tame:1b,Tags:["Czg"],ActiveEffects:[{Id:8,Amplifier:2b,Duration:999999,ShowParticles:0b},{Id:14,Amplifier:1b,Duration:999999,ShowParticles:0b}],Attributes:[{Name:generic.movement_speed,Base:0.09},{Name:horse.jump_strength,Base:0.35}],SaddleItem:{id:"minecraft:saddle",Count:1b},ArmorItem:{}}
execute at @s run ride @s mount @e[tag=Czg,limit=1,sort=nearest]
scoreboard players reset @s isch.dth
execute at @s run tp @s ~ ~-100 ~
execute at @s at @e[tag=Czg,limit=1,sort=nearest,tag=pr.target] run tp @e[tag=Czg,limit=1,sort=nearest,tag=pr.target] ~ ~-100 ~
execute at @s run kill @e[tag=Czg,limit=1,sort=nearest,tag=pr.target]
execute at @s run kill @a[tag=pr.target,limit=1,sort=nearest]
kill @s
execute at @a[tag=pr.target,scores={isch.dth=1}] run summon zoglin ~ ~ ~ {HasVisualFire:0b,Silent:0b,Invulnerable:1b,CustomNameVisible:1b,DeathLootTable:"air",NoAI:1b,Tags:["Rzg"],CustomName:'{"text":"Bloody Beast","color":"white","bold":true}',ActiveEffects:[{Id:5,Amplifier:1b,Duration:999999,ShowParticles:1b}],Attributes:[{Name:generic.knockback_resistance,Base:1}]}
execute at @a[tag=pr.target,scores={isch.dth=1}] run summon horse ~ ~ ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:'{"text":"Bloody Beast","color":"white","bold":true}',DeathLootTable:"air",NoAI:1b,Tame:1b,Tags:["Czg"],ActiveEffects:[{Id:8,Amplifier:2b,Duration:999999,ShowParticles:0b},{Id:14,Amplifier:1b,Duration:999999,ShowParticles:0b}],Attributes:[{Name:generic.movement_speed,Base:0.09},{Name:horse.jump_strength,Base:0.35}],SaddleItem:{id:"minecraft:saddle",Count:1b},ArmorItem:{}}
execute as @a[tag=pr.target,scores={isch.dth=1}] at @s run ride @s mount @e[tag=Czg,limit=1,sort=nearest,tag=pr.target]
scoreboard players reset @a[tag=pr.target,scores={isch.dth=1}] isch.dth
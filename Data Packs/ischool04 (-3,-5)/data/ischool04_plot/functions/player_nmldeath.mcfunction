execute at @s run kill @e[tag=Czg,limit=1,sort=nearest,tag=pr.target]
execute at @e[tag=Rzg,tag=pr.target,limit=1] run tp @e[tag=Rzg,tag=pr.target,limit=1] ~ ~-40 ~
execute at @s run kill @e[tag=Rzg,limit=1,sort=nearest,tag=pr.target]
execute at @e[tag=check1,limit=1,tag=pr.target] run tp @a[tag=pr.target,tag=part1] ~ ~ ~ 180 0
execute at @e[tag=check2,limit=1,tag=pr.target] run tp @a[tag=pr.target,tag=part2] ~ ~ ~ 180 0
execute at @a[tag=pr.target] run summon horse ~ ~ ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:'{"text":"Bloody Beast","color":"white","bold":true}',DeathLootTable:"air",NoAI:1b,Tame:0b,Tags:["pr.target","Czg"],ActiveEffects:[{Id:8,Amplifier:2b,Duration:999999,ShowParticles:0b},{Id:14,Amplifier:1b,Duration:999999,ShowParticles:0b}],Attributes:[{Name:generic.movement_speed,Base:0.09},{Name:horse.jump_strength,Base:0.35}],SaddleItem:{id:"minecraft:saddle",Count:1b},ArmorItem:{}}
execute at @a[tag=pr.target] run summon zoglin ~ ~ ~ {HasVisualFire:0b,Silent:0b,Invulnerable:1b,CustomNameVisible:1b,DeathLootTable:"air",NoAI:1b,Tags:["pr.target","Rzg"],CustomName:'{"text":"Bloody Beast","color":"white","bold":true}',ActiveEffects:[{Id:5,Amplifier:1b,Duration:999999,ShowParticles:1b}],Attributes:[{Name:generic.knockback_resistance,Base:1}]}
execute at @a[tag=pr.target] run ride @a[tag=pr.target,limit=1] mount @e[tag=Czg,limit=1,sort=nearest,tag=pr.target]
execute if entity @a[tag=pr.target,tag=kmc,limit=1] as @e[type=zombified_piglin,tag=pr.target] at @s run function ischool04_plot:angry_zpiglin
scoreboard players reset @s isch.dth
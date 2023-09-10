execute at @e[tag=pr.target,tag=jpmagic.checkpoint_marker] if block ~ ~ ~ minecraft:light_weighted_pressure_plate[power=1] as @a[tag=pr.target,distance=..1] run function pr:player/checkpoint/mark
execute at @e[tag=pr.target,tag=jpmagic.death] as @e[type=minecraft:magma_cube,tag=pr.target,distance=..50,nbt={Size:7}] run tp @s ~ -150 ~
execute as @e[tag=pr.target,tag=jpmarker] at @s if block ~ ~ ~ light_weighted_pressure_plate[power=1] run scoreboard players add @a[sort=nearest,limit=1,tag=pr.target] jpmagic.luckyjump 1
execute if entity @a[tag=pr.target,scores={jpmagic.luckyjump=1}] run function jpmagic:lucky_jump_rng
execute as @e[tag=pr.target,tag=jpmarker] at @s if block ~ ~ ~ light_weighted_pressure_plate[power=0] run scoreboard players reset @a jpmagic.luckyjump

#RNG HAPPEN
execute as @e[tag=pr.target,tag=jpmarker] at @s if block ~ ~ ~ light_weighted_pressure_plate[power=1] run tag @a[sort=nearest,limit=1,tag=pr.target] add steplucky
execute as @e[tag=pr.target,tag=jpmagic.afterjump] at @s if entity @a[distance=..1,tag=pr.target] run function jpmagic:jprng

#BOSS FIGHT
execute at @e[tag=pr.target,tag=jp_key_back] run tp @a[tag=pr.target,distance=..2,predicate=jpmagic:holding_tripwire_hook] ~ ~ ~-2
execute at @e[tag=pr.target,tag=jp_key_back] as @a[tag=pr.target,distance=..2,predicate=jpmagic:holding_tripwire_hook] run function jpmagic:lavadoor
execute at @e[tag=pr.target,tag=jpmagic.key_marker] if entity @p[tag=pr.target,distance=..2,predicate=jpmagic:holding_tripwire_hook] unless entity @e[tag=pr.target,tag=jpboss] run summon minecraft:magma_cube ~ ~-5 ~-20 {Size:15,CustomName:'[{"text":"Volcano\'s Keeper","color":"gold"}]',CustomNameVisible:1b,Health:100,Tags:["jpboss"],ActiveEffects:[{Id:5,Duration:100000000,Amplifier:20,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:100f}]}
execute at @e[tag=pr.target,tag=jpmagic.key_marker] run clear @a[tag=pr.target,distance=..2,predicate=jpmagic:holding_tripwire_hook] tripwire_hook
execute at @p store result bossbar minecraft:jpmagic.volcanokeeper value run data get entity @e[tag=pr.target,tag=jpboss,limit=1] Health 1
execute at @p store result bossbar minecraft:jpmagic.volcanokeeper max run attribute @e[tag=pr.target,tag=jpboss,limit=1] minecraft:generic.max_health get 1
execute unless entity @e[tag=pr.target,tag=jpboss] run bossbar set minecraft:jpmagic.volcanokeeper visible false
execute if entity @e[tag=pr.target,tag=jpboss] run bossbar set minecraft:jpmagic.volcanokeeper visible true
execute at @e[tag=pr.target,tag=jpboss] run bossbar set jpmagic.volcanokeeper players @a[tag=pr.target,distance=..20]
execute unless entity @e[tag=pr.target,tag=jpboss] run fill 65763 -58 -539 65761 -58 -537 minecraft:slime_block
execute if entity @e[tag=pr.target,tag=jpboss] run fill 65763 -58 -539 65761 -58 -537 minecraft:air
execute as @a[tag=pr.target,x=65762,y=-57,z=-538,distance=..2] at @s if entity @s if block ~ ~-1 ~ minecraft:slime_block run effect give @s minecraft:levitation 1 127 true
execute as @a[tag=pr.target,x=65762,y=70,z=-538,distance=..2] at @s run clear @s
execute as @a[tag=pr.target,x=65762,y=70,z=-538,distance=..4] at @s run function pr:player/finish
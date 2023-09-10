execute at @e[tag=checkpoint_marker] if block ~ ~ ~ minecraft:light_weighted_pressure_plate[power=1] as @a[distance=..1] run function pr:player/checkpoint/mark
execute at @e[tag=death] as @e[type=minecraft:magma_cube,nbt={Size:7},distance=..50] run tp @s ~ -150 ~
execute as @e[tag=jpmarker] at @s if block ~ ~ ~ light_weighted_pressure_plate[power=1] run scoreboard players add @a[sort=nearest,limit=1,tag=pr.target] luckyjump 1
execute if entity @a[scores={luckyjump=1}] run function jpmagic:lucky_jump_rng
execute as @e[tag=jpmarker] at @s if block ~ ~ ~ light_weighted_pressure_plate[power=0] run scoreboard players reset @a luckyjump

#RNG HAPPEN
execute as @e[tag=jpmarker] at @s if block ~ ~ ~ light_weighted_pressure_plate[power=1] run tag @a[sort=nearest,limit=1,tag=pr.target] add steplucky
execute as @e[tag=afterjump] at @s if entity @a[distance=..1,tag=pr.target] run function jpmagic:jprng

#BOSS FIGHT
execute at @e[tag=jp_key_back] run tp @a[nbt={SelectedItem:{id:"minecraft:tripwire_hook"}},distance=..2] ~ ~ ~-2
execute at @e[tag=jp_key_back] as @a[distance=..2,nbt={SelectedItem:{id:"minecraft:tripwire_hook"}}] run function jpmagic:lavadoor
execute at @e[tag=key_marker] if entity @p[nbt={SelectedItem:{id:"minecraft:tripwire_hook"}},distance=..2] unless entity @e[tag=jpboss] run summon minecraft:magma_cube ~ ~-5 ~-20 {Size:15,CustomName:'[{"text":"Volcano\'s Keeper","color":"gold"}]',CustomNameVisible:1b,Health:100,Tags:["jpboss"],ActiveEffects:[{Id:5,Duration:100000000,Amplifier:20,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:100f}]}
execute at @e[tag=key_marker] run clear @a[nbt={SelectedItem:{id:"minecraft:tripwire_hook"}},distance=..2] tripwire_hook
execute at @p store result bossbar minecraft:volcanokeeper value run data get entity @e[tag=jpboss,limit=1] Health 1
execute at @p store result bossbar minecraft:volcanokeeper max run attribute @e[tag=jpboss,limit=1] minecraft:generic.max_health get 1
execute unless entity @e[tag=jpboss] run bossbar set minecraft:volcanokeeper visible false
execute if entity @e[tag=jpboss] run bossbar set minecraft:volcanokeeper visible true
execute at @e[tag=jpboss] run bossbar set volcanokeeper players @a[distance=..20]
execute unless entity @e[tag=jpboss] run fill 65763 -58 -539 65761 -58 -537 minecraft:slime_block
execute if entity @e[tag=jpboss] run fill 65763 -58 -539 65761 -58 -537 minecraft:air
execute as @a[x=65762,y=-57,z=-538,distance=..2] at @s if entity @s if block ~ ~-1 ~ minecraft:slime_block run effect give @s minecraft:levitation 1 127 true
execute as @a[x=65762,y=70,z=-538,distance=..2] at @s run clear @s
execute as @a[x=65762,y=70,z=-538,distance=..4] at @s run function pr:player/finish
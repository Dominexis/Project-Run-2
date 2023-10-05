# This function will run every tick while players are in your plot on the center block at Y=0
#particle minecraft:ambient_entity_effect ~33 ~2 ~ 0 0 0 0.1 10 force
particle minecraft:portal ~33 ~2.5 ~ 0.1 0.3 0.1 0.3 2 force
effect give @a[tag=pr.target] minecraft:night_vision 20 0 true

#teleport to level
execute as @a[tag=pr.target] positioned ~33 ~2 ~0 if entity @s[distance=..1] run scoreboard players add @s brosephmc_mc_pr_tpTimer 1
execute as @a[tag=pr.target] positioned ~33 ~2 ~0 if entity @s[distance=1..2] run scoreboard players set @s brosephmc_mc_pr_tpTimer 0
effect give @a[tag=pr.target, scores={brosephmc_mc_pr_tpTimer=1..}] minecraft:nausea 4 0 true
execute as @a[tag=pr.target, scores={brosephmc_mc_pr_tpTimer=1..}] at @s run playsound minecraft:entity.parrot.eat player @a[tag=pr.target] ~ ~ ~ 0.3 0.5
execute as @a[tag=pr.target, scores={brosephmc_mc_pr_tpTimer=60..}] run playsound minecraft:entity.player.levelup player @a[tag=pr.target] ~25 ~18 ~-27
execute as @a[tag=pr.target, scores={brosephmc_mc_pr_tpTimer=60..}] run tp @s ~25 ~18 ~-27 0 15
execute as @a[tag=pr.target, scores={brosephmc_mc_pr_tpTimer=60..}] run playsound minecraft:entity.enderman.teleport player @a[tag=pr.target] ~25 ~18 ~-27
execute as @a[tag=pr.target, scores={brosephmc_mc_pr_tpTimer=60..}] run particle minecraft:campfire_cosy_smoke ~25 ~19.5 ~-27 0.1 0.1 0.1 0.1 100
execute as @a[tag=pr.target, scores={brosephmc_mc_pr_tpTimer=60..}] positioned ~25 ~18 ~-27 run function pr:player/checkpoint/mark
execute as @a[tag=pr.target, scores={brosephmc_mc_pr_tpTimer=60..}] run scoreboard players set @s brosephmc_mc_pr_SFXTimer 99
execute as @a[tag=pr.target, scores={brosephmc_mc_pr_tpTimer=60..}] run scoreboard players set @s brosephmc_mc_pr_tpTimer 0

#passive particles
particle minecraft:campfire_cosy_smoke ~11 ~22 ~12 0 0.1 -1.4 0.1 0 force
particle minecraft:campfire_cosy_smoke ~23 ~22 ~28 0 0.1 -1.4 0.1 0 force
particle minecraft:campfire_cosy_smoke ~28 ~22 ~28 0 0.1 -1.4 0.1 0 force

#onTheRoad tag
tag @a[tag=pr.target,tag=onTheRoad] remove onTheRoad
execute as @a[tag=pr.target] at @s if block ~ ~-7 ~ deepslate run tag @s add onTheRoad

#sound fx
execute at @a[tag=pr.target,scores={fall=1..}] unless block ~ ~-2 ~ deepslate run playsound minecraft:entity.iron_golem.hurt player @a[tag=pr.target] ~ ~ ~ 0.5 2
scoreboard players set @a[tag=pr.target,scores={fall=1..}] fall 0

scoreboard players add @a[tag=pr.target] brosephmc_mc_pr_SFXTimer 1
execute as @a[tag=pr.target,scores={brosephmc_mc_pr_SFXTimer=100..},tag=onTheRoad] at @s run playsound minecraft:item.elytra.flying ambient @s ~ ~ ~ 0.3 0
scoreboard players set @a[tag=pr.target,scores={brosephmc_mc_pr_SFXTimer=100..}] brosephmc_mc_pr_SFXTimer 0
tag @a[tag=pr.target,tag=onTheRoad] remove stoppedWindSound
stopsound @a[tag=pr.target,tag=!onTheRoad,tag=!stoppedWindSound] ambient
tag @a[tag=pr.target,tag=!onTheRoad] add stoppedWindSound

#falling on the road
execute as @a[tag=pr.target,gamemode=!spectator,gamemode=!creative] at @s if block ~ ~-1.1 ~ deepslate run playsound minecraft:entity.player.attack.knockback player @a[tag=pr.target] ~ ~ ~ 100
execute as @a[tag=pr.target,gamemode=!spectator,gamemode=!creative] at @s if block ~ ~-1.1 ~ deepslate run playsound minecraft:entity.player.death player @a[tag=pr.target] ~ ~ ~ 5
execute as @a[tag=pr.target,gamemode=!spectator,gamemode=!creative] at @s if block ~ ~-1.1 ~ deepslate run kill @s

#new checkpoint
execute as @a[tag=pr.target] at @s if block ~ ~ ~ moss_carpet run particle minecraft:happy_villager ~ ~ ~ 0.2 0.2 0.2 1 2
execute as @a[tag=pr.target] at @s if block ~ ~ ~ moss_carpet run function pr:player/checkpoint/mark

#teleport to the finish
particle minecraft:portal ~25 ~19 ~30 0.1 0.3 0.1 0.4 2 force
execute as @a[tag=pr.target] positioned ~25 ~19 ~30 if entity @s[distance=..1] run stopsound @s ambient
execute as @a[tag=pr.target] positioned ~25 ~19 ~30 if entity @s[distance=..1] align xyz run playsound minecraft:entity.enderman.teleport player @a[tag=pr.target] ~-24.5 ~0 ~-0.5 5
execute as @a[tag=pr.target] positioned ~25 ~19 ~30 if entity @s[distance=..1] align xyz run particle minecraft:campfire_cosy_smoke ~-24.5 ~1.5 ~-0.5 0.1 0.1 0.1 0.1 100
execute as @a[tag=pr.target] positioned ~25 ~19 ~30 if entity @s[distance=..1] align xyz run tellraw @s [{"text":"Thanks for playing! ","color":"green"},{"text":"Motor Course level by BrosephMC","color":"dark_green"}]
execute as @a[tag=pr.target] positioned ~25 ~19 ~30 if entity @s[distance=..1] align xyz run tp @s ~-24.5 ~0.1 ~-0.5

#bats
scoreboard players add debris brosephmc_mc_pr_otherTimer 1
execute if score debris brosephmc_mc_pr_otherTimer >= 60 brosephmc_mc_pr_otherTimer at @e[tag=pr.target,tag=batSpawn,sort=random,limit=1] run summon bat ~ ~ ~ {Health:1.0f,Rotation:[180f,0f],NoAI:1,Tags:["tunnelBat"],Passengers:[{id:"minecraft:zombie",Rotation:[180f,0f],NoGravity:1,Invulnerable:1b,IsBaby:1b,DeathLootTable:"empty",Silent:1,Tags:["batZombie"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:65000,ShowParticles:0b}]}]}
execute if score debris brosephmc_mc_pr_otherTimer >= 60 brosephmc_mc_pr_otherTimer run scoreboard players set debris brosephmc_mc_pr_otherTimer 0

execute as @e[tag=pr.target,tag=tunnelBat] at @s if block ~ ~ ~-0.3 #brosephmc_mc_pr:no_collision positioned ^ ^ ^4 unless entity @p[tag=pr.target,distance=..4] positioned ^ ^ ^-4 run tp @s ~ ~ ~-0.3 180 0
execute as @e[tag=pr.target,tag=tunnelBat] at @s unless block ~ ~ ~-0.3 #brosephmc_mc_pr:no_collision run tp @s ~ ~0.3 ~0.3 180 0
execute as @e[tag=pr.target,tag=tunnelBat] at @s positioned ^ ^ ^4 if entity @p[tag=pr.target,distance=..4] positioned ^ ^ ^-4 facing entity @p[tag=pr.target] feet run tp @s ^ ^ ^0.3 facing entity @p[tag=pr.target] feet
execute as @e[tag=pr.target,tag=tunnelBat,tag=!playedSound] at @s positioned ^ ^ ^4 if entity @p[tag=pr.target,distance=..4] positioned ^ ^ ^-4 facing entity @p[tag=pr.target] feet run playsound minecraft:entity.bat.takeoff neutral @a[tag=pr.target]
execute as @e[tag=pr.target,tag=tunnelBat,tag=!playedSound] at @s positioned ^ ^ ^4 if entity @p[tag=pr.target,distance=..4] positioned ^ ^ ^-4 facing entity @p[tag=pr.target] feet run team join brosephmc_mc_pr_angryBat @s
execute as @e[tag=pr.target,tag=tunnelBat,tag=!playedSound] at @s positioned ^ ^ ^4 if entity @p[tag=pr.target,distance=..4] positioned ^ ^ ^-4 facing entity @p[tag=pr.target] feet run tag @s add playedSound
execute at @a[tag=pr.target] run effect give @e[tag=tunnelBat,tag=pr.target,distance=..9] glowing 1 0 true

execute as @e[tag=pr.target,tag=tunnelBat] at @s if block ~ ~ ~-1 cyan_terracotta run effect give @s invisibility 1 0 true
execute as @e[tag=pr.target,tag=tunnelBat] at @s if block ~ ~ ~-1 cyan_terracotta run effect clear @s glowing
execute as @e[tag=pr.target,tag=tunnelBat] at @s if block ~ ~ ~-0.6 cyan_terracotta run tp @s ~ ~-20 ~
execute as @e[tag=pr.target,tag=tunnelBat] at @s unless block ~ ~-8 ~ deepslate run kill @s

execute as @e[tag=pr.target,tag=batZombie] at @s unless entity @e[tag=tunnelBat,tag=pr.target,distance=..1] run kill @s
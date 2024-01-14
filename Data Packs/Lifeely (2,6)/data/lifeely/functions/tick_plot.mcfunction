# Spawn arrows

execute as @e[type=minecraft:marker,tag=lifeely.dispenser,tag=pr.target] at @s run function lifeely:dispenser



scoreboard players add #second_timer lifeely.value 1
execute if score #second_timer lifeely.value matches 20.. run function lifeely:second



# Tick crushers

execute as @e[type=minecraft:marker,tag=lifeely.crusher,tag=pr.target] at @s run function lifeely:crusher

execute positioned ~21 ~0 ~-4 as @a[dx=5,dy=2,dz=16,tag=pr.target] at @s if block ~ 1 ~ minecraft:chain run kill @s
execute positioned ~21 ~0 ~-4 as @a[dx=5,dy=2,dz=16,tag=pr.target] at @s if block ~ 1 ~ minecraft:lightning_rod run kill @s

execute as @a[tag=pr.target] at @s if block ~ ~-0.1 ~ minecraft:black_stained_glass run kill @s
execute as @a[tag=pr.target] at @s if block ~ ~ ~ minecraft:water run kill @s



# Handle ridable snowball logic

execute positioned ~5 ~0 ~21 as @a[distance=..1,tag=pr.target,tag=!lifeely.mount] run function lifeely:snowball_1
execute positioned ~-13 ~54 ~-6 as @a[distance=..1.2,tag=pr.target,tag=!lifeely.mount] run function lifeely:snowball_2
execute positioned ~-8 ~64 ~5 as @a[distance=..1.5,tag=pr.target,tag=!lifeely.mount] run function lifeely:snowball_3
execute positioned ~-36 ~67 ~5 as @a[distance=..2,tag=pr.target,tag=!lifeely.mount] run function lifeely:snowball_4

kill @e[type=minecraft:armor_stand,tag=lifeely.armor_stand,nbt={OnGround:1b}]

execute as @a[tag=pr.target] run function lifeely:check_mount

execute positioned ~-14 ~ ~2 run kill @a[dx=16,dy=1,dz=31,tag=pr.target]



# Elevator

execute positioned ~-25 ~0 ~-19 as @a[distance=..2,tag=pr.target] at @s run function lifeely:elevator



# Minecart mayhem

execute as @e[type=minecraft:marker,tag=lifeely.minecart,tag=pr.target] at @s run function lifeely:minecart
execute as @e[type=minecraft:minecart,tag=pr.target] at @s if block ~ ~ ~ minecraft:powered_rail run data merge entity @s {Motion:[0.0d,0.0d,0.5d]}
execute as @e[type=minecraft:minecart,tag=pr.target] at @s if block ~ ~-0.1 ~ minecraft:slime_block run data merge entity @s {Motion:[0.0d,0.6d,0.6d]}
execute as @e[type=minecraft:minecart,tag=pr.target] at @s positioned ~ ~ ~0.3 run tag @a[distance=..0.7,tag=pr.target,tag=!lifeely.mount] add lifeely.minecart_lock

execute as @a[tag=pr.target,tag=!lifeely.mount,tag=lifeely.minecart_lock] at @s run ride @s mount @e[type=minecraft:minecart,distance=..3,tag=pr.target,sort=nearest,limit=1]



kill @a[tag=pr.target,predicate=lifeely:on_fire]



execute as @a[tag=pr.target] at @s if block ~ ~-0.1 ~ minecraft:light_blue_wool run effect give @s minecraft:speed 3 4 true
execute as @a[tag=pr.target,tag=!lifeely.speed_sound] at @s if block ~ ~-0.1 ~ minecraft:light_blue_wool run playsound minecraft:entity.wither.shoot master @a
execute as @a[tag=pr.target,tag=!lifeely.speed_sound] at @s if block ~ ~-0.1 ~ minecraft:light_blue_wool run tag @s add lifeely.speed_sound
execute as @a[tag=pr.target,tag=lifeely.speed_sound] at @s unless block ~ ~-0.1 ~ minecraft:light_blue_wool run tag @s remove lifeely.speed_sound

execute positioned ~-31 ~45 ~-12 run clear @a[distance=..6,tag=pr.target]



# Villager spawner

execute as @e[type=minecraft:marker,tag=lifeely.villager,tag=pr.target] at @s run function lifeely:villager

execute as @e[type=minecraft:villager,tag=pr.target,tag=lifeely.villager_to_die] at @s unless block ~0.3 ~-0.1 ~ minecraft:air run data merge entity @s {Motion:[-0.2d,-0.1d,0.0d]}
execute as @e[type=minecraft:villager,tag=pr.target,tag=lifeely.villager_to_die] at @s if block ~-0.4 ~ ~ minecraft:polished_deepslate_stairs run data merge entity @s {Motion:[-0.2d,0.3d,0.0d]}

execute as @e[type=minecraft:villager,tag=pr.target,tag=lifeely.bouncy_villager] at @s if block ~ ~-0.1 ~ minecraft:slime_block run data merge entity @s {Motion:[0.0d,0.8d,0.0d],Rotation:[90.0f,0.0f]}



# Finish

execute positioned ~-4 ~54 ~-36 as @a[dx=15,dy=3,dz=0,tag=pr.target] at @s run function pr:player/finish
return 1
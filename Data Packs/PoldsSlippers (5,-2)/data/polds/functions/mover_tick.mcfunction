## water

# mover 1
execute unless score direction1 polds.system matches 1 as @e[tag=polds.mover1,tag=pr.target] at @s run clone ~-1 ~-1 ~-2 ~1 ~3 ~2 ~-1 ~-1 ~-3 masked move
execute unless score direction1 polds.system matches 1 as @e[tag=polds.mover1,tag=pr.target] at @s run tp ~ ~ ~-1
execute if score direction1 polds.system matches 1 as @e[tag=polds.mover1,tag=pr.target] at @s run clone ~-1 ~-1 ~-2 ~1 ~3 ~2 ~-1 ~-1 ~-1 masked move
execute if score direction1 polds.system matches 1 as @e[tag=polds.mover1,tag=pr.target] at @s run tp ~ ~ ~1
execute as @e[tag=polds.flipper1L,tag=pr.target] at @s if block ~ ~-1 ~ minecraft:spruce_slab run scoreboard players set direction1 polds.system 1
execute as @e[tag=polds.flipper1R,tag=pr.target] at @s if block ~ ~-1 ~ minecraft:spruce_slab run scoreboard players set direction1 polds.system 0

# mover 2
execute unless score direction2 polds.system matches 1 as @e[tag=polds.mover2,tag=pr.target] at @s run clone ~-1 ~-1 ~-2 ~1 ~3 ~2 ~-1 ~-1 ~-3 masked move
execute unless score direction2 polds.system matches 1 as @e[tag=polds.mover2,tag=pr.target] at @s run tp ~ ~ ~-1
execute if score direction2 polds.system matches 1 as @e[tag=polds.mover2,tag=pr.target] at @s run clone ~-1 ~-1 ~-2 ~1 ~3 ~2 ~-1 ~-1 ~-1 masked move
execute if score direction2 polds.system matches 1 as @e[tag=polds.mover2,tag=pr.target] at @s run tp ~ ~ ~1
execute as @e[tag=polds.flipper2L,tag=pr.target] at @s if block ~ ~-1 ~ minecraft:spruce_slab run scoreboard players set direction2 polds.system 1
execute as @e[tag=polds.flipper2R,tag=pr.target] at @s if block ~ ~-1 ~ minecraft:spruce_slab run scoreboard players set direction2 polds.system 0

# mover 3
execute unless score direction3 polds.system matches 1 as @e[tag=polds.mover3,tag=pr.target] at @s run clone ~ ~-1 ~-2 ~1 ~3 ~2 ~ ~-1 ~-3 masked move
execute unless score direction3 polds.system matches 1 as @e[tag=polds.mover3,tag=pr.target] at @s run tp ~ ~ ~-1
execute if score direction3 polds.system matches 1 as @e[tag=polds.mover3,tag=pr.target] at @s run clone ~ ~-1 ~-2 ~1 ~3 ~2 ~ ~-1 ~-1 masked move
execute if score direction3 polds.system matches 1 as @e[tag=polds.mover3,tag=pr.target] at @s run tp ~ ~ ~1
execute as @e[tag=polds.flipper3L,tag=pr.target] at @s if block ~ ~-1 ~ minecraft:spruce_slab run scoreboard players set direction3 polds.system 1
execute as @e[tag=polds.flipper3R,tag=pr.target] at @s if block ~ ~-1 ~ minecraft:spruce_slab run scoreboard players set direction3 polds.system 0

## lava

# mover 4
execute unless score direction4 polds.system matches 1 as @e[tag=polds.mover4,tag=pr.target] at @s run clone ~-1 ~-1 ~-1 ~1 ~-1 ~2 ~-1 ~-1 ~-2 masked move
execute unless score direction4 polds.system matches 1 as @e[tag=polds.mover4,tag=pr.target] at @s run tp ~ ~ ~-1
execute if score direction4 polds.system matches 1 as @e[tag=polds.mover4,tag=pr.target] at @s run clone ~-1 ~-1 ~-1 ~1 ~-1 ~2 ~-1 ~-1 ~ masked move
execute if score direction4 polds.system matches 1 as @e[tag=polds.mover4,tag=pr.target] at @s run tp ~ ~ ~1
execute as @e[tag=polds.flipper4L,tag=pr.target] at @s if block ~ ~-1 ~ minecraft:polished_blackstone_brick_slab run scoreboard players set direction4 polds.system 1
execute as @e[tag=polds.flipper4R,tag=pr.target] at @s if block ~ ~-1 ~ minecraft:polished_blackstone_brick_slab run scoreboard players set direction4 polds.system 0

# mover 5
execute unless score direction5 polds.system matches 1 as @e[tag=polds.mover5,tag=pr.target] at @s run clone ~-1 ~-1 ~-1 ~2 ~-1 ~1 ~-2 ~-1 ~-1 masked move
execute unless score direction5 polds.system matches 1 as @e[tag=polds.mover5,tag=pr.target] at @s run tp ~-1 ~ ~
execute if score direction5 polds.system matches 1 as @e[tag=polds.mover5,tag=pr.target] at @s run clone ~-1 ~-1 ~-1 ~2 ~-1 ~1 ~ ~-1 ~-1 masked move
execute if score direction5 polds.system matches 1 as @e[tag=polds.mover5,tag=pr.target] at @s run tp ~1 ~ ~
execute as @e[tag=polds.flipper5D,tag=pr.target] at @s if block ~ ~-1 ~ minecraft:polished_blackstone_brick_slab run scoreboard players set direction5 polds.system 1
execute as @e[tag=polds.flipper5U,tag=pr.target] at @s if block ~ ~-1 ~ minecraft:polished_blackstone_brick_slab run scoreboard players set direction5 polds.system 0

# mover 6
execute as @e[tag=polds.mover6,tag=pr.target] at @s run setblock ~ ~-1 ~ minecraft:chain[axis=z]
execute unless score direction6 polds.system matches 1 as @e[tag=polds.mover6,tag=pr.target] at @s run setblock ~ ~-1 ~-1 minecraft:red_nether_bricks
execute unless score direction6 polds.system matches 1 as @e[tag=polds.mover6,tag=pr.target] at @s run tp ~ ~ ~-1
execute if score direction6 polds.system matches 1 as @e[tag=polds.mover6,tag=pr.target] at @s run setblock ~ ~-1 ~1 minecraft:red_nether_bricks
execute if score direction6 polds.system matches 1 as @e[tag=polds.mover6,tag=pr.target] at @s run tp ~ ~ ~1
execute as @e[tag=polds.flipper6L,tag=pr.target] at @s if block ~ ~-1 ~ minecraft:red_nether_bricks run scoreboard players set direction6 polds.system 1
execute as @e[tag=polds.flipper6R,tag=pr.target] at @s if block ~ ~-1 ~ minecraft:red_nether_bricks run scoreboard players set direction6 polds.system 0

# mover 7
execute unless score direction7 polds.system matches 1 as @e[tag=polds.mover7,tag=pr.target] at @s run clone ~ ~-1 ~-1 ~1 ~-1 ~1 ~ ~-1 ~-2 masked move
execute unless score direction7 polds.system matches 1 as @e[tag=polds.mover7,tag=pr.target] at @s run tp ~ ~ ~-1
execute if score direction7 polds.system matches 1 as @e[tag=polds.mover7,tag=pr.target] at @s run clone ~ ~-1 ~-1 ~1 ~-1 ~1 ~ ~-1 ~ masked move
execute if score direction7 polds.system matches 1 as @e[tag=polds.mover7,tag=pr.target] at @s run tp ~ ~ ~1
execute as @e[tag=polds.flipper7L,tag=pr.target] at @s if block ~ ~-1 ~ minecraft:polished_blackstone_brick_slab run scoreboard players set direction7 polds.system 1
execute as @e[tag=polds.flipper7R,tag=pr.target] at @s if block ~ ~-1 ~ minecraft:polished_blackstone_brick_slab run scoreboard players set direction7 polds.system 0
return 1
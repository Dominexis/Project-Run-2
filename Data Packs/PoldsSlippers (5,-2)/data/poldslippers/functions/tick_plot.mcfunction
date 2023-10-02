scoreboard players add Time Polds.HalfSecTimer 1
scoreboard players add Time Polds.QuarterSecTimer 1
scoreboard players add Time Polds.EighthSecTimer 1

#Moving
execute as @e[type=armor_stand,tag=pr.target,tag=WoodPlatform] at @s if score Time Polds.HalfSecTimer matches 9 run tp @s ^ ^ ^1
execute as @e[type=armor_stand,tag=pr.target,tag=WoodPlatform,tag=!180] at @s if score Time Polds.HalfSecTimer matches 9 run clone ^1 ^3 ^1 ^-1 ^-1 ^-3 ^-1 ^-1 ^-2 replace force
execute as @e[type=armor_stand,tag=pr.target,tag=WoodPlatform,tag=180] at @s if score Time Polds.HalfSecTimer matches 9 run clone ^1 ^3 ^1 ^-1 ^-1 ^-3 ^1 ^-1 ^2 replace force
execute as @e[type=armor_stand,tag=pr.target,tag=WoodPlatform] at @s if score Time Polds.HalfSecTimer matches 9 run fill ^1 ^-1 ^-3 ^-1 ^3 ^-3 air

#Wood Platform Turn Around
execute as @e[type=armor_stand,tag=pr.target,tag=WoodPlatform] at @s if block ^ ^1 ^3 barrier run playsound block.barrel.close master @a[tag=pr.target,distance=..20] ~ ~ ~ 0.5 0.5 0.25
execute as @e[type=armor_stand,tag=pr.target,tag=WoodPlatform] at @s if block ^ ^3 ^3 structure_void run tag @s add 180
execute as @e[type=armor_stand,tag=pr.target,tag=WoodPlatform] at @s if block ^ ^3 ^3 cave_air run tag @s remove 180
execute as @e[type=armor_stand,tag=pr.target,tag=WoodPlatform] at @s if block ^ ^1 ^3 barrier run tp @s ^ ^ ^ facing ^ ^ ^-5

#Red Nether Brick
execute as @e[type=armor_stand,tag=pr.target,tag=Red_Nether_Brick] at @s if entity @e[type=block_display,tag=pr.target,tag=Rail,distance=..1] if score Time Polds.QuarterSecTimer matches 4 run fill ~ ~ ~ ~ ~ ~ red_nether_bricks replace #poldslippers:air
execute as @e[type=armor_stand,tag=pr.target,tag=Red_Nether_Brick] at @s if entity @e[type=block_display,tag=pr.target,tag=Rail,distance=..1] if score Time Polds.QuarterSecTimer matches 4 run fill ^ ^ ^-1 ^ ^ ^-1 air replace red_nether_bricks
execute as @e[type=armor_stand,tag=pr.target,tag=Red_Nether_Brick] at @s if entity @e[type=block_display,tag=pr.target,tag=Rail,distance=..1] if score Time Polds.QuarterSecTimer matches 4 unless block ^ ^ ^1 #poldslippers:air run playsound block.chain.break master @a[distance=..10,tag=pr.target] ~ ~ ~ 1 1 1
execute as @e[type=armor_stand,tag=pr.target,tag=Red_Nether_Brick] at @s if entity @e[type=block_display,tag=pr.target,tag=Rail,distance=..1] if score Time Polds.QuarterSecTimer matches 4 unless block ^ ^ ^1 #poldslippers:air run tp @s ^ ^ ^ facing ^ ^ ^-5
execute as @e[type=armor_stand,tag=pr.target,tag=Red_Nether_Brick] at @s if entity @e[type=block_display,tag=pr.target,tag=Rail,distance=..1] if score Time Polds.QuarterSecTimer matches 4 if block ^ ^ ^1 #poldslippers:air run tp @s ^ ^ ^1

#BlackStonePlatforms
execute as @e[type=armor_stand,tag=pr.target,tag=BlackstoneSlab,tag=3x2] at @s if score Time Polds.EighthSecTimer matches 2 if block ~ ~ ~ #poldslippers:air run fill ^ ^-1 ^1 ^-1 ^-1 ^-1 polished_blackstone_brick_slab[type=bottom] replace #poldslippers:air
execute as @e[type=armor_stand,tag=pr.target,tag=BlackstoneSlab,tag=3x4] at @s if score Time Polds.EighthSecTimer matches 2 if block ~ ~ ~ #poldslippers:air run fill ^ ^-1 ^1 ^-3 ^-1 ^-1 polished_blackstone_brick_slab[type=bottom] replace #poldslippers:air
execute as @e[type=armor_stand,tag=pr.target,tag=BlackstoneSlab,tag=4x3] at @s if score Time Polds.EighthSecTimer matches 2 if block ~ ~ ~ #poldslippers:air run fill ^ ^-1 ^1 ^-2 ^-1 ^-2 polished_blackstone_brick_slab[type=bottom] replace #poldslippers:air
execute as @e[type=armor_stand,tag=pr.target,tag=BlackstoneSlab,tag=3x2] at @s if score Time Polds.EighthSecTimer matches 2 if block ~ ~ ~ #poldslippers:air run fill ^ ^-1 ^-2 ^-1 ^-1 ^-2 air replace polished_blackstone_brick_slab[type=bottom]
execute as @e[type=armor_stand,tag=pr.target,tag=BlackstoneSlab,tag=3x4] at @s if score Time Polds.EighthSecTimer matches 2 if block ~ ~ ~ #poldslippers:air run fill ^ ^-1 ^-2 ^-3 ^-1 ^-2 air replace polished_blackstone_brick_slab[type=bottom]
execute as @e[type=armor_stand,tag=pr.target,tag=BlackstoneSlab,tag=4x3] at @s if score Time Polds.EighthSecTimer matches 2 if block ~ ~ ~ #poldslippers:air run fill ^ ^-1 ^-3 ^-2 ^-1 ^-3 air replace polished_blackstone_brick_slab[type=bottom]
execute as @e[type=armor_stand,tag=pr.target,tag=BlackstoneSlab] at @s if score Time Polds.EighthSecTimer matches 2 unless block ^ ^ ^2 #poldslippers:air run playsound block.stone.place master @a[tag=pr.target,distance=..15] ~ ~ ~ 1 1 1
execute as @e[type=armor_stand,tag=pr.target,tag=BlackstoneSlab,tag=4x3] at @s if score Time Polds.EighthSecTimer matches 2 unless block ^ ^ ^2 #poldslippers:air run tp @s ^-2 ^ ^-1 facing ^-2 ^ ^-5
execute as @e[type=armor_stand,tag=pr.target,tag=BlackstoneSlab,tag=3x4] at @s if score Time Polds.EighthSecTimer matches 2 unless block ^ ^ ^2 #poldslippers:air run tp @s ^-3 ^ ^ facing ^-3 ^ ^-5
execute as @e[type=armor_stand,tag=pr.target,tag=BlackstoneSlab,tag=3x2] at @s if score Time Polds.EighthSecTimer matches 2 unless block ^ ^ ^2 #poldslippers:air run tp @s ^-1 ^ ^ facing ^-1 ^ ^-5
execute as @e[type=armor_stand,tag=pr.target,tag=BlackstoneSlab] at @s if score Time Polds.EighthSecTimer matches 2 if block ~ ~ ~ #poldslippers:air run tp @s ^ ^ ^1

#Timer Reset
execute if score Time Polds.HalfSecTimer matches 10 run scoreboard players set Time Polds.HalfSecTimer 0
execute if score Time Polds.HalfSecTimer matches 5 run scoreboard players set Time Polds.QuarterSecTimer 0
execute if score Time Polds.HalfSecTimer matches 2 run scoreboard players set Time Polds.EighthSecTimer 0


#Night Vision
# effect give @a[tag=pr.target] night_vision infinite 0 true

execute as @a[tag=pr.target] at @s if block ~ ~ ~ water run kill @s
execute as @a[tag=pr.target] at @s if block ~ ~ ~ lava run kill @s
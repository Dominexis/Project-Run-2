# This function will run every tick while players are in your plot on the center block at Y=0

execute as @a[tag=pr.target,predicate=lory:random_rustle] at @s positioned over motion_blocking at @s[distance=0..32] run function lory:wind_rustle

execute positioned ~28 ~21 ~13 as @a[dx=3,dy=3,dz=3,tag=pr.target] align xyz positioned ~2 ~ ~2 rotated -30 19 run function pr:player/checkpoint/mark_pos
execute positioned ~29 ~18 ~33 as @a[dx=3,dy=3,dz=3,tag=pr.target] align xyz positioned ~1 ~ ~2 rotated 167 17 run function pr:player/checkpoint/mark_pos


execute align xyz positioned ~32 ~8 ~20 as @a[dx=6,dy=0,dz=6,tag=pr.target,predicate=!lory:on_raft] run function lory:drowning
execute align xyz positioned ~-40 ~-1.75 ~-40 as @a[dx=80,dy=0,dz=80,tag=pr.target,predicate=!lory:on_raft] at 0073bfd4-016d-1b4b-0001-320713876e6e positioned ~33 ~-2 ~-1 unless entity @s[dx=2,dy=3,dz=2] at 0073bfd4-016d-1b4b-0001-320713876e6e positioned ~35 ~-2 ~-11 unless entity @s[dx=3,dy=3,dz=3] run function lory:drowning

execute align xyz positioned ~28 ~3 ~32 as @a[dx=2,dy=11,dz=0,tag=pr.target] at 0073bfd4-016d-1b4b-0001-320713876e6e align xyz positioned ~28 ~3 ~33 unless entity @s[dx=2,dy=11,dz=0] run function lory:drowning
execute align xyz positioned ~31 ~3 ~31 as @a[dx=0,dy=0,dz=0,tag=pr.target] run function lory:drowning
execute align xyz positioned ~32 ~3 ~30 as @a[dx=0,dy=0,dz=0,tag=pr.target] run function lory:drowning


execute if predicate lory:random_rustle positioned ~13 ~27 ~25 run particle minecraft:happy_villager ~ ~ ~ 0.5 0.5 0.5 0.01 10 normal @a[distance=..4,tag=pr.target]
execute positioned ~13 ~27 ~25 if entity @a[distance=..7,tag=pr.target,limit=1] run function lory:barrel_tick

execute as @e[distance=0..128,tag=lory.npc,tag=lory.raft_keeper,limit=1] at @s if entity @a[tag=pr.target,distance=0..15] run function lory:npc/raft_keeper/tick

# waterfall ambience
execute positioned ~31 ~-1 ~26 run particle minecraft:cloud ~ ~ ~ 2 1 2.3 0 1200 force @a[distance=32..,tag=pr.target]
execute positioned ~31 ~-1 ~26 run particle minecraft:cloud ~ ~ ~ 2 1 2.3 0 600 force @a[distance=16..,tag=pr.target]
execute positioned ~31 ~-1 ~26 run particle minecraft:cloud ~ ~ ~ 2 1 2.3 0 200 force @a[distance=8..32,tag=pr.target]
execute positioned ~31 ~-1 ~26 run particle minecraft:cloud ~ ~ ~ 2 1 2.3 0 100 force @a[distance=..16,tag=pr.target]

execute positioned ~27 ~-1 ~32 run particle minecraft:cloud ~ ~ ~ 2 1 2.3 0 600 force @a[distance=16..,tag=pr.target]
execute positioned ~27 ~-1 ~32 run particle minecraft:cloud ~ ~ ~ 2 1 2.3 0 200 force @a[distance=8..32,tag=pr.target]
execute positioned ~27 ~-1 ~32 run particle minecraft:cloud ~ ~ ~ 2 1 2.3 0 100 force @a[distance=..16,tag=pr.target]


# execute positioned ~27 ~-1 ~30 run playsound minecraft:weather.rain ambient @a[distance=..8,tag=pr.target] ~ ~ ~ 0.4 0.6 0.1
# execute positioned ~27 ~-1 ~30 run playsound minecraft:weather.rain ambient @a[distance=8..24,tag=pr.target] ~ ~ ~ 0.2 0.4 0.5
# execute positioned ~27 ~-1 ~30 run playsound minecraft:weather.rain ambient @a[distance=16..48,tag=pr.target] ~ ~ ~ 0.4 0.2 0.7
# execute positioned ~27 ~-1 ~30 run playsound minecraft:weather.rain ambient @a[distance=32..64,tag=pr.target] ~ ~ ~ 0.6 0.1 0.05


# 
execute align xyz positioned ~-19 ~16 ~-10 if entity @a[dx=20,dy=20,dz=20,tag=pr.target,limit=1] run function lory:snake/tick
execute align xyz positioned ~-19 ~16 ~-10 unless entity @a[dx=20,dy=20,dz=20,tag=pr.target,limit=1] if score $snake_timer lory.var matches 0.. run function lory:snake/off


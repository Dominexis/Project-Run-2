# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players

kill @e[tag=cygnus_entity]

summon armor_stand ~-37 ~1 ~0 {Tags:["cygnus_entity","cygnus_cp0"],Rotation:[-90,0],Invulnerable:1b,Marker:1b,Invisible:1b}
summon armor_stand ~-3 ~11 ~-9 {Tags:["cygnus_entity","cygnus_cp1"],Rotation:[-90,0],Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @e[type=armor_stand,tag=cygnus_entity] at @s run tp @s ~ ~ ~ -90 0

summon marker ~-32 ~0 ~1 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-32 ~0 ~2 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-31 ~0 ~1 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-31 ~0 ~2 {Tags:["cygnus_entity","cygnus_purple"]}

summon marker ~-32 ~0 ~-2 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-32 ~0 ~-1 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-31 ~0 ~-2 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-31 ~0 ~-1 {Tags:["cygnus_entity","cygnus_yellow"]}

summon marker ~-23 ~1 ~-2 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-23 ~1 ~-1 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-22 ~1 ~-2 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-22 ~1 ~-1 {Tags:["cygnus_entity","cygnus_yellow"]}

summon marker ~-23 ~2 ~2 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-23 ~2 ~3 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-22 ~2 ~2 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-22 ~2 ~3 {Tags:["cygnus_entity","cygnus_purple"]}

summon marker ~-18 ~2 ~2 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-18 ~2 ~3 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-17 ~2 ~2 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-17 ~2 ~3 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-16 ~2 ~2 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-16 ~2 ~3 {Tags:["cygnus_entity","cygnus_yellow"]}

summon marker ~-18 ~4 ~2 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-18 ~4 ~3 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-17 ~4 ~2 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-17 ~4 ~3 {Tags:["cygnus_entity","cygnus_purple"]}

summon marker ~-12 ~2 ~2 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-12 ~2 ~3 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-11 ~2 ~2 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-11 ~2 ~3 {Tags:["cygnus_entity","cygnus_purple"]}

summon marker ~-8 ~3 ~-3 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-8 ~3 ~-2 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-7 ~3 ~-3 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-7 ~3 ~-2 {Tags:["cygnus_entity","cygnus_purple"]}

summon marker ~-13 ~3 ~-4 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-13 ~3 ~-3 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-12 ~3 ~-4 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-12 ~3 ~-3 {Tags:["cygnus_entity","cygnus_yellow"]}

summon marker ~-17 ~4 ~-8 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-17 ~4 ~-7 {Tags:["cygnus_entity","cygnus_yellow"]}

summon marker ~-17 ~6 ~-10 {Tags:["cygnus_entity","cygnus_yellow"]}

summon marker ~-17 ~5 ~-11 {Tags:["cygnus_entity","cygnus_purple"]}

summon marker ~1 ~10 ~-9 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~2 ~10 ~-9 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~3 ~10 ~-9 {Tags:["cygnus_entity","cygnus_purple"]}

summon marker ~4 ~10 ~-10 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~5 ~10 ~-10 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~6 ~10 ~-10 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~4 ~10 ~-9 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~5 ~10 ~-9 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~6 ~10 ~-9 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~4 ~10 ~-8 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~5 ~10 ~-8 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~6 ~10 ~-8 {Tags:["cygnus_entity","cygnus_purple"]}

summon marker ~9 ~11 ~-9 {Tags:["cygnus_entity","cygnus_yellow"]}

summon marker ~11 ~12 ~-6 {Tags:["cygnus_entity","cygnus_purple"]}

summon marker ~11 ~13 ~-3 {Tags:["cygnus_entity","cygnus_yellow"]}

summon marker ~11 ~14 ~0 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~10 ~14 ~0 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~9 ~14 ~0 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~8 ~14 ~0 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~11 ~14 ~1 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~10 ~14 ~1 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~9 ~14 ~1 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~8 ~14 ~1 {Tags:["cygnus_entity","cygnus_purple"]}

summon marker ~6 ~21 ~0 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~5 ~21 ~0 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~4 ~21 ~0 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~6 ~21 ~-1 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~5 ~21 ~-1 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~4 ~21 ~-1 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~6 ~21 ~-2 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~5 ~21 ~-2 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~4 ~21 ~-2 {Tags:["cygnus_entity","cygnus_purple"]}

summon marker ~3 ~17 ~-19 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~3 ~17 ~-20 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~2 ~17 ~-19 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~2 ~17 ~-20 {Tags:["cygnus_entity","cygnus_purple"]}

summon marker ~3 ~19 ~-19 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~2 ~19 ~-19 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~1 ~19 ~-19 {Tags:["cygnus_entity","cygnus_yellow"]}

summon marker ~3 ~21 ~-19 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~3 ~21 ~-20 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~2 ~21 ~-19 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~2 ~21 ~-20 {Tags:["cygnus_entity","cygnus_purple"]}

summon marker ~-7 ~9 ~-22 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-8 ~9 ~-22 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-9 ~9 ~-22 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-10 ~9 ~-22 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-7 ~9 ~-23 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-8 ~9 ~-23 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-9 ~9 ~-23 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-10 ~9 ~-23 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-7 ~9 ~-24 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-8 ~9 ~-24 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-9 ~9 ~-24 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-10 ~9 ~-24 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-7 ~9 ~-25 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-8 ~9 ~-25 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-9 ~9 ~-25 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-10 ~9 ~-25 {Tags:["cygnus_entity","cygnus_yellow"]}

summon marker ~-4 ~28 ~-30 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-3 ~28 ~-30 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~-4 ~28 ~-31 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-3 ~28 ~-31 {Tags:["cygnus_entity","cygnus_yellow"]}

summon marker ~-4 ~30 ~-30 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-4 ~30 ~-31 {Tags:["cygnus_entity","cygnus_purple"]}

summon marker ~-1 ~29 ~-30 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-1 ~29 ~-31 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~0 ~29 ~-30 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~0 ~29 ~-31 {Tags:["cygnus_entity","cygnus_purple"]}

summon marker ~-2 ~31 ~-33 {Tags:["cygnus_entity","cygnus_yellow"]}

summon marker ~0 ~32 ~-33 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~1 ~32 ~-33 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~0 ~32 ~-34 {Tags:["cygnus_entity","cygnus_purple"]}
summon marker ~1 ~32 ~-34 {Tags:["cygnus_entity","cygnus_purple"]}

summon marker ~8 ~22 ~6 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~9 ~22 ~6 {Tags:["cygnus_entity","cygnus_yellow"]}

summon marker ~8 ~23 ~9 {Tags:["cygnus_entity","cygnus_purple"]}

summon marker ~9 ~24 ~9 {Tags:["cygnus_entity","cygnus_yellow"]}

summon marker ~11 ~26 ~10 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~11 ~26 ~11 {Tags:["cygnus_entity","cygnus_yellow"]}

summon marker ~8 ~27 ~13 {Tags:["cygnus_entity","cygnus_purple"]}

summon marker ~6 ~29 ~14 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~6 ~29 ~15 {Tags:["cygnus_entity","cygnus_yellow"]}

summon marker ~5 ~28 ~17 {Tags:["cygnus_entity","cygnus_yellow"]}

summon marker ~3 ~29 ~20 {Tags:["cygnus_entity","cygnus_purple"]}

summon marker ~4 ~32 ~23 {Tags:["cygnus_entity","cygnus_purple"]}

summon marker ~2 ~32 ~23 {Tags:["cygnus_entity","cygnus_yellow"]}

summon marker ~3 ~35 ~23 {Tags:["cygnus_entity","cygnus_yellow"]}

summon marker ~2 ~34 ~28 {Tags:["cygnus_entity","cygnus_purple"]}

summon marker ~1 ~32 ~33 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~1 ~32 ~34 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~0 ~32 ~33 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~0 ~32 ~34 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-1 ~32 ~33 {Tags:["cygnus_entity","cygnus_yellow"]}
summon marker ~-1 ~32 ~34 {Tags:["cygnus_entity","cygnus_yellow"]}

scoreboard objectives add cygnus_data dummy
scoreboard players set $cygnus_switch_state cygnus_data 0
scoreboard objectives add cygnus_jump minecraft.custom:jump

function cygnus_switch_palace:switch/change_blocks
kill @e[tag=frostcobra.portalIn]
kill @e[tag=frostcobra.portalOut]
kill @e[tag=frostcobra.checkpoint]
kill @e[tag=frostcobra.finish]

# SUMMON ALL THE PORTALS

# S
scoreboard players set temp frostcobra.tpScore 1
execute positioned ~-20 ~-2 ~0 run function frostcobra:summon_portal_in
execute positioned ~26 ~-25 ~-18 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore 0
execute positioned ~-36 ~-2 ~0 run function frostcobra:summon_portal_in
execute positioned ~-8 ~49 ~33 run function frostcobra:summon_portal_out

# F
scoreboard players set temp frostcobra.tpScore 1
execute positioned ~6 ~53 ~-1 run function frostcobra:summon_portal_in
execute positioned ~-12 ~-34 ~8 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore 1
execute positioned ~2 ~50 ~14 run function frostcobra:summon_portal_in
execute positioned ~-4 ~-11 ~-30 run function frostcobra:summon_portal_out

# K
scoreboard players set temp frostcobra.tpScore 1
execute positioned ~-6 ~-3 ~20 run function frostcobra:summon_portal_in
execute positioned ~6 ~-21 ~-9 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore 0
execute positioned ~1 ~-9 ~16 run function frostcobra:summon_portal_in
execute positioned ~-35 ~2 ~6 run function frostcobra:summon_portal_out

# A
scoreboard players set temp frostcobra.tpScore -1
execute positioned ~29 ~-23 ~10 run function frostcobra:summon_portal_in
execute positioned ~-10 ~-7 ~-4 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore 1
execute positioned ~22 ~-20 ~10 run function frostcobra:summon_portal_in
execute positioned ~-35 ~-48 ~-26 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore 0
execute positioned ~2 ~-20 ~3 run function frostcobra:summon_portal_in
execute positioned ~-28 ~-33 ~28 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore 1
execute positioned ~-15 ~-15 ~-29 run function frostcobra:summon_portal_in
execute positioned ~27 ~-37 ~29 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore 1
execute positioned ~-35 ~-16 ~-26 run function frostcobra:summon_portal_in
execute positioned ~-24 ~26 ~29 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore 1
execute positioned ~25 ~-20 ~-21 run function frostcobra:summon_portal_in
execute positioned ~-19 ~-51 ~-27 run function frostcobra:summon_portal_out

# B
scoreboard players set temp frostcobra.tpScore 1
execute positioned ~-26 ~-27 ~1 run function frostcobra:summon_portal_in
execute positioned ~16 ~16 ~-5 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore 1
execute positioned ~-15 ~-29 ~22 run function frostcobra:summon_portal_in
execute positioned ~-3 ~82 ~-4 run function frostcobra:summon_portal_out

# O
scoreboard players set temp frostcobra.tpScore -1
execute positioned ~34 ~65 ~34 run function frostcobra:summon_portal_in
execute positioned ~-9 ~42 ~5 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore 1
execute positioned ~32 ~65 ~21 run function frostcobra:summon_portal_in
execute positioned ~16 ~16 ~-20 run function frostcobra:summon_portal_out

# C
scoreboard players set temp frostcobra.tpScore 0
execute positioned ~16 ~11.5 ~-9 run function frostcobra:summon_portal_in
execute positioned ~-16 ~-51 ~-4 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore 1
execute positioned ~13 ~32 ~-7 run function frostcobra:summon_portal_in
execute positioned ~17 ~93 ~9 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore 0
execute positioned ~24 ~28 ~-6 run function frostcobra:summon_portal_in
execute positioned ~6 ~-33 ~28 run function frostcobra:summon_portal_out

# E
scoreboard players set temp frostcobra.tpScore -2
execute positioned ~3 ~16 ~35 run function frostcobra:summon_portal_in
execute positioned ~10 ~46 ~16 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore 1
execute positioned ~-11 ~15 ~35 run function frostcobra:summon_portal_in
execute positioned ~-31 ~38 ~-6 run function frostcobra:summon_portal_out

# H
scoreboard players set temp frostcobra.tpScore -1
execute positioned ~14 ~-33 ~32 run function frostcobra:summon_portal_in
execute positioned ~26 ~-16 ~-15 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore 1
execute positioned ~10 ~-26 ~24 run function frostcobra:summon_portal_in
execute positioned ~-27 ~69 ~28 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore -2
execute positioned ~24 ~-37 ~20 run function frostcobra:summon_portal_in
execute positioned ~-6 ~-12.5 ~16 run function frostcobra:summon_portal_out

# L
scoreboard players set temp frostcobra.tpScore 1
execute positioned ~-17 ~-37 ~-25 run function frostcobra:summon_portal_in
execute positioned ~15 ~78 ~-34 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore -1
execute positioned ~-34 ~-44 ~-16 run function frostcobra:summon_portal_in
execute positioned ~25 ~67 ~23 run function frostcobra:summon_portal_out

# Q
scoreboard players set temp frostcobra.tpScore 1
execute positioned ~-10 ~82 ~-17 run function frostcobra:summon_portal_in
execute positioned ~-2 ~67 ~29 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore 0
execute positioned ~1 ~83 ~-5 run function frostcobra:summon_portal_in
execute positioned ~10 ~-38 ~15 run function frostcobra:summon_portal_out

# D
scoreboard players set temp frostcobra.tpScore 1
execute positioned ~-22 ~35 ~-29 run function frostcobra:summon_portal_in
execute positioned ~1 ~26 ~-34 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore 1
execute positioned ~-23 ~45 ~-10 run function frostcobra:summon_portal_in
execute positioned ~26 ~55 ~-10 run function frostcobra:summon_portal_out

# J
scoreboard players set temp frostcobra.tpScore -1
execute positioned ~31 ~84 ~19 run function frostcobra:summon_portal_in
execute positioned ~-7 ~26 ~26 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore 1
execute positioned ~22 ~77 ~-4 run function frostcobra:summon_portal_in
execute positioned ~0 ~53 ~-24 run function frostcobra:summon_portal_out

# M
scoreboard players set temp frostcobra.tpScore 1
execute positioned ~-29 ~80 ~-4 run function frostcobra:summon_portal_in
execute positioned ~20 ~25 ~29 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore -2
execute positioned ~-18 ~70 ~3 run function frostcobra:summon_portal_in
execute positioned ~27 ~65 ~34 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore 0
execute positioned ~-8 ~64 ~12 run function frostcobra:summon_portal_in
execute positioned ~-32 ~36 ~9 run function frostcobra:summon_portal_out

# P
scoreboard players set temp frostcobra.tpScore -1
execute positioned ~-1 ~83 ~-29 run function frostcobra:summon_portal_in
execute positioned ~21 ~11.5 ~-17 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore 1
execute positioned ~13 ~87 ~-20 run function frostcobra:summon_portal_in
execute positioned ~13 ~16 ~28 run function frostcobra:summon_portal_out

# I
scoreboard players set temp frostcobra.tpScore 1
execute positioned ~-8 ~59 ~-24 run function frostcobra:summon_portal_in
execute positioned ~-11 ~103 ~-13 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore -1
execute positioned ~5 ~62 ~-22 run function frostcobra:summon_portal_in
execute positioned ~-25 ~82 ~-16 run function frostcobra:summon_portal_out

# G
scoreboard players set temp frostcobra.tpScore -1
execute positioned ~-5 ~13 ~-33 run function frostcobra:summon_portal_in
execute positioned ~25 ~82 ~-34 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore 1
execute positioned ~14 ~33 ~-35 run function frostcobra:summon_portal_in
execute positioned ~1 ~109 ~-1 run function frostcobra:summon_portal_out

# N
scoreboard players set temp frostcobra.tpScore 1
execute positioned ~31 ~8 ~26 run function frostcobra:summon_portal_in
execute positioned ~-20 ~105 ~13 run function frostcobra:summon_portal_out
scoreboard players set temp frostcobra.tpScore -1
execute positioned ~19 ~16 ~21 run function frostcobra:summon_portal_in
execute positioned ~13 ~95 ~23 run function frostcobra:summon_portal_out

# Z
scoreboard players set temp frostcobra.tpScore -1
execute positioned ~-16 ~103 ~-13 run function frostcobra:summon_portal_in
execute positioned ~25 ~44 ~29 run function frostcobra:summon_portal_out

# SUMMON CHECKPOINTS

execute positioned ~5 ~-22 ~-8 run function frostcobra:summon_checkpoint
execute positioned ~-15 ~-14 ~-34 run function frostcobra:summon_checkpoint
execute positioned ~13 ~21 ~-16 run function frostcobra:summon_checkpoint
execute positioned ~22 ~18 ~28 run function frostcobra:summon_checkpoint
execute positioned ~-28 ~79 ~16 run function frostcobra:summon_checkpoint
execute positioned ~0 ~104 ~18 run function frostcobra:summon_checkpoint
execute positioned ~-2 ~108 ~-1 run function frostcobra:summon_checkpoint

# SUMMON FINISH

summon minecraft:text_display ~-23 ~130 ~-1 {text:'{"text":"\\u2691","color":"green"}',Tags:["pr.target","frostcobra.finish"],billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5f,5f,5f]},background:0}

# Disable forceload
forceload remove ~-40 ~-40 ~40 ~40

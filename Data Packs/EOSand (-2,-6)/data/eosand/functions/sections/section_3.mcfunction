# Section 3

# Run startup
execute positioned ~7 ~-22 ~ if entity @s[distance=..1.5] unless score @s eosand.pipe_num matches 1 run function eosand:sections/section_3_startup

# Teleport sounds (unless not in pipe), give levitation 255, give darkness
execute at @s unless score @s eosand.pipe_num matches 0 run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 0.5
# execute as @s unless score @s eosand.pipe_num matches 0 run effect give @s levitation 1 255 true
execute unless score @s eosand.pipe_num matches 0 run effect give @s minecraft:darkness 1 0 true

# Close door
execute positioned ~11 ~-22 ~ if entity @s[distance=..1.5] run fill ~-2 ~2 ~-1 ~-2 ~ ~1 minecraft:glass_pane[north=true,south=true]


########################################
# Pipe 1 (gray, end ~26 ~-22 ~)
execute if entity @s[scores={eosand.pipe_num=1}] on vehicle at @s run tp @s ~1 ~ ~
# execute as @s[scores={eosand.pipe_num=1}] at @s run tp @s ~1 ~ ~
execute if entity @s[scores={eosand.pipe_num=1}] run function eosand:colors/cyan

# Red
# execute positioned ~26 ~-22 ~ as @s[scores={eosand.pipe_num=1},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 2

# Yellow
execute positioned ~26 ~-22 ~ if entity @s[distance=..1.5,scores={eosand.pipe_num=1},y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
execute positioned ~26 ~-22 ~ if entity @s[distance=..1.5,scores={eosand.pipe_num=1},y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green
# execute positioned ~26 ~-22 ~ as @s[scores={eosand.pipe_num=1},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink
execute positioned ~26 ~-22 ~ if entity @s[distance=..1.5,scores={eosand.pipe_num=1},y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4
execute positioned ~26 ~-22 ~ if entity @s[distance=..1.5,scores={eosand.pipe_num=1},y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4

# Cyan (correct)
execute positioned ~26 ~-22 ~ if entity @s[distance=..1.5,scores={eosand.pipe_num=1},x_rotation=45..90] run scoreboard players set @s eosand.junctions 1

# Purple
execute positioned ~26 ~-22 ~ if entity @s[distance=..1.5,scores={eosand.pipe_num=1},x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6

# Center player in pipe immediately after junction to tp them cleanly
execute if entity @s[scores={eosand.junctions=1}] on vehicle run tp @s ~26 ~-23 ~
execute if entity @s[scores={eosand.junctions=1}] run scoreboard players set @s eosand.pipe_num 2
execute if entity @s[scores={eosand.junctions=1}] run scoreboard players set @s eosand.junctions 0


########################################
# Pipe 2 (cyan, end ~26 ~-46 ~)
execute positioned ~26 ~-25 ~ if entity @s[distance=..1.5,scores={eosand.pipe_num=2}] run playsound minecraft:block.end_portal_frame.fill player @s
execute if entity @s[scores={eosand.pipe_num=2}] on vehicle at @s run tp @s ~ ~-1 ~
# execute as @s[scores={eosand.pipe_num=2}] at @s run tp @s ~ ~-1 ~
execute if entity @s[scores={eosand.pipe_num=2}] run function eosand:colors/yellow

# Red
execute positioned ~26 ~-46 ~ if entity @s[distance=..1.5,scores={eosand.pipe_num=2},y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -1

# Yellow (correct)
execute positioned ~26 ~-46 ~ if entity @s[distance=..1.5,scores={eosand.pipe_num=2},y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.junctions 2
execute positioned ~26 ~-46 ~ if entity @s[distance=..1.5,scores={eosand.pipe_num=2},y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.junctions 2

# Green
execute positioned ~26 ~-46 ~ if entity @s[distance=..1.5,scores={eosand.pipe_num=2},y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink
execute positioned ~26 ~-46 ~ if entity @s[distance=..1.5,scores={eosand.pipe_num=2},y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4
execute positioned ~26 ~-46 ~ if entity @s[distance=..1.5,scores={eosand.pipe_num=2},y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4

# Cyan
# execute positioned ~26 ~-46 ~ as @s[scores={eosand.pipe_num=2},distance=..1.5,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num 2

# Purple
# execute positioned ~26 ~-46 ~ as @s[scores={eosand.pipe_num=2},distance=..1.5,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6

# Center player in pipe immediately after junction to tp them cleanly
execute if entity @s[scores={eosand.junctions=2}] on vehicle run tp @s ~26 ~-47 ~-2
execute if entity @s[scores={eosand.junctions=2}] run scoreboard players set @s eosand.pipe_num 3
execute if entity @s[scores={eosand.junctions=2}] run scoreboard players set @s eosand.junctions 0


########################################
# Pipe 3 (yellow, end ~26 ~-46 ~-26)
execute positioned ~26 ~-46 ~-4 if entity @s[distance=..1.5,scores={eosand.pipe_num=3}] run playsound minecraft:block.end_portal_frame.fill player @s
execute if entity @s[scores={eosand.pipe_num=3}] on vehicle at @s run tp @s ~ ~ ~-1
# execute as @s[scores={eosand.pipe_num=3}] at @s run tp @s ~ ~ ~-1
execute if entity @s[scores={eosand.pipe_num=3}] run function eosand:colors/purple

# Red
execute positioned ~26 ~-46 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=3},y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -1

# Yellow
# execute positioned ~26 ~-46 ~-26 as @s[scores={eosand.pipe_num=3},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 3
# execute positioned ~26 ~-46 ~-26 as @s[scores={eosand.pipe_num=3},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 3

# Green
execute positioned ~26 ~-46 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=3},y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink
# execute positioned ~26 ~-46 ~-26 as @s[scores={eosand.pipe_num=3},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4
# execute positioned ~26 ~-46 ~-26 as @s[scores={eosand.pipe_num=3},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4

# Cyan
execute positioned ~26 ~-46 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=3},x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple (correct)
execute positioned ~26 ~-46 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=3},x_rotation=-90..-45] run scoreboard players set @s eosand.junctions 3

# Center player in pipe immediately after junction to tp them cleanly
execute if entity @s[scores={eosand.junctions=3}] on vehicle run tp @s ~26 ~-42 ~-26
execute if entity @s[scores={eosand.junctions=3}] run scoreboard players set @s eosand.pipe_num 4
execute if entity @s[scores={eosand.junctions=3}] run scoreboard players set @s eosand.junctions 0


########################################
# Pipe 4 (purple, end ~26 ~-22 ~-26)
execute positioned ~26 ~-40 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=4}] run playsound minecraft:block.end_portal_frame.fill player @s
execute if entity @s[scores={eosand.pipe_num=4}] on vehicle at @s run tp @s ~ ~1 ~
# execute as @s[scores={eosand.pipe_num=4}] at @s run tp @s ~ ~1 ~
execute if entity @s[scores={eosand.pipe_num=4}] run function eosand:colors/red

# Red (correct)
execute positioned ~26 ~-22 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=4},y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.junctions 4

# Yellow
execute positioned ~26 ~-22 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=4},y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
execute positioned ~26 ~-22 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=4},y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green
execute positioned ~26 ~-22 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=4},y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink
execute positioned ~26 ~-22 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=4},y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4
execute positioned ~26 ~-22 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=4},y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4

# Cyan
# execute positioned ~26 ~-22 ~-26 as @s[scores={eosand.pipe_num=4},distance=..1.5,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple
# execute positioned ~26 ~-22 ~-26 as @s[scores={eosand.pipe_num=4},distance=..1.5,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num 4

# Center player in pipe immediately after junction to tp them cleanly
execute if entity @s[scores={eosand.junctions=4}] on vehicle run tp @s ~24 ~-23 ~-26
execute if entity @s[scores={eosand.junctions=4}] run scoreboard players set @s eosand.pipe_num 5
execute if entity @s[scores={eosand.junctions=4}] run scoreboard players set @s eosand.junctions 0


########################################
# Pipe 5 (red, end ~ ~-22 ~-26)
execute positioned ~22 ~-22 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=5}] run playsound minecraft:block.end_portal_frame.fill player @s
execute if entity @s[scores={eosand.pipe_num=5}] on vehicle at @s run tp @s ~-1 ~ ~
# execute as @s[scores={eosand.pipe_num=5}] at @s run tp @s ~-1 ~ ~
execute if entity @s[scores={eosand.pipe_num=5}] run function eosand:colors/red

# Red (correct)
execute positioned ~ ~-22 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=5},y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.junctions 5

# Yellow
execute positioned ~ ~-22 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=5},y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
execute positioned ~ ~-22 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=5},y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green
# execute positioned ~ ~-22 ~-26 as @s[scores={eosand.pipe_num=5},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink
execute positioned ~ ~-22 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=5},y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4
execute positioned ~ ~-22 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=5},y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4

# Cyan
execute positioned ~ ~-22 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=5},x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple
execute positioned ~ ~-22 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=5},x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6

# Center player in pipe immediately after junction to tp them cleanly
execute if entity @s[scores={eosand.junctions=5}] on vehicle run tp @s ~-2 ~-23 ~-26
execute if entity @s[scores={eosand.junctions=5}] run scoreboard players set @s eosand.pipe_num 6
execute if entity @s[scores={eosand.junctions=5}] run scoreboard players set @s eosand.junctions 0


########################################
# Pipe 6 (red, end ~-26 ~-22 ~-26)
execute positioned ~-4 ~-22 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=6}] run playsound minecraft:block.end_portal_frame.fill player @s
execute if entity @s[scores={eosand.pipe_num=6}] on vehicle at @s run tp @s ~-1 ~ ~
# execute as @s[scores={eosand.pipe_num=6}] at @s run tp @s ~-1 ~ ~
execute if entity @s[scores={eosand.pipe_num=6}] run function eosand:colors/pink

# Red
# execute positioned ~-26 ~-22 ~-26 as @s[scores={eosand.pipe_num=6},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 6

# Yellow
execute positioned ~-26 ~-22 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=6},y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
execute positioned ~-26 ~-22 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=6},y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green
# execute positioned ~-26 ~-22 ~-26 as @s[scores={eosand.pipe_num=6},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink (correct)
execute positioned ~-26 ~-22 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=6},y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.junctions 6
execute positioned ~-26 ~-22 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=6},y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.junctions 6

# Cyan
execute positioned ~-26 ~-22 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=6},x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple
execute positioned ~-26 ~-22 ~-26 if entity @s[distance=..1.5,scores={eosand.pipe_num=6},x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6

# Center player in pipe immediately after junction to tp them cleanly
execute if entity @s[scores={eosand.junctions=6}] on vehicle run tp @s ~-26 ~-23 ~-24
execute if entity @s[scores={eosand.junctions=6}] run scoreboard players set @s eosand.pipe_num 7
execute if entity @s[scores={eosand.junctions=6}] run scoreboard players set @s eosand.junctions 0


########################################
# Pipe 7 (pink, end ~-26 ~-22 ~-13)
execute positioned ~-26 ~-22 ~-22 if entity @s[distance=..1.5,scores={eosand.pipe_num=7}] run playsound minecraft:block.end_portal_frame.fill player @s
execute if entity @s[scores={eosand.pipe_num=7}] on vehicle at @s run tp @s ~ ~ ~1
# execute as @s[scores={eosand.pipe_num=7}] at @s run tp @s ~ ~ ~1
execute if entity @s[scores={eosand.pipe_num=7}] run function eosand:colors/cyan

# Red
execute positioned ~-26 ~-22 ~-13 if entity @s[distance=..1.5,scores={eosand.pipe_num=7},y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -1

# Yellow
# execute positioned ~-26 ~-22 ~-13 as @s[scores={eosand.pipe_num=7},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
# execute positioned ~-26 ~-22 ~-13 as @s[scores={eosand.pipe_num=7},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green
execute positioned ~-26 ~-22 ~-13 if entity @s[distance=..1.5,scores={eosand.pipe_num=7},y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink
# execute positioned ~-26 ~-22 ~-13 as @s[scores={eosand.pipe_num=7},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 7
# execute positioned ~-26 ~-22 ~-13 as @s[scores={eosand.pipe_num=7},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 7

# Cyan (correct)
execute positioned ~-26 ~-22 ~-13 if entity @s[distance=..1.5,scores={eosand.pipe_num=7},x_rotation=45..90] run scoreboard players set @s eosand.junctions 7

# Purple
execute positioned ~-26 ~-22 ~-13 if entity @s[distance=..1.5,scores={eosand.pipe_num=7},x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6

# Center player in pipe immediately after junction to tp them cleanly
execute if entity @s[scores={eosand.junctions=7}] on vehicle run tp @s ~-26 ~-23 ~-13
execute if entity @s[scores={eosand.junctions=7}] run scoreboard players set @s eosand.pipe_num 8
execute if entity @s[scores={eosand.junctions=7}] run scoreboard players set @s eosand.junctions 0


########################################
# Pipe 8 (cyan, end ~-26 ~-46 ~-13)
execute positioned ~-26 ~-25 ~-13 if entity @s[distance=..1.5,scores={eosand.pipe_num=8}] run playsound minecraft:block.end_portal_frame.fill player @s
execute if entity @s[scores={eosand.pipe_num=8}] on vehicle at @s run tp @s ~ ~-1 ~
# execute as @s[scores={eosand.pipe_num=8}] at @s run tp @s ~ ~-1 ~
execute if entity @s[scores={eosand.pipe_num=8}] run function eosand:colors/pink

# Red
execute positioned ~-26 ~-46 ~-13 if entity @s[distance=..1.5,scores={eosand.pipe_num=8},y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -1

# Yellow
execute positioned ~-26 ~-46 ~-13 if entity @s[distance=..1.5,scores={eosand.pipe_num=8},y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
execute positioned ~-26 ~-46 ~-13 if entity @s[distance=..1.5,scores={eosand.pipe_num=8},y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green
execute positioned ~-26 ~-46 ~-13 if entity @s[distance=..1.5,scores={eosand.pipe_num=8},y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink (correct)
execute positioned ~-26 ~-46 ~-13 if entity @s[distance=..1.5,scores={eosand.pipe_num=8},y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.junctions 8
execute positioned ~-26 ~-46 ~-13 if entity @s[distance=..1.5,scores={eosand.pipe_num=8},y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.junctions 8

# Cyan
# execute positioned ~-26 ~-46 ~-13 as @s[scores={eosand.pipe_num=8},distance=..1.5,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num 8

# Purple
# execute positioned ~-26 ~-46 ~-13 as @s[scores={eosand.pipe_num=8},distance=..1.5,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6

# Center player in pipe immediately after junction to tp them cleanly
execute if entity @s[scores={eosand.junctions=8}] on vehicle run tp @s ~-26 ~-47 ~-11
execute if entity @s[scores={eosand.junctions=8}] run scoreboard players set @s eosand.pipe_num 9
execute if entity @s[scores={eosand.junctions=8}] run scoreboard players set @s eosand.junctions 0


########################################
# Pipe 9 (pink, end ~-26 ~-46 ~13)
execute positioned ~-26 ~-46 ~-9 if entity @s[distance=..1.5,scores={eosand.pipe_num=9}] run playsound minecraft:block.end_portal_frame.fill player @s
execute if entity @s[scores={eosand.pipe_num=9}] on vehicle at @s run tp @s ~ ~ ~1
# execute as @s[scores={eosand.pipe_num=9}] at @s run tp @s ~ ~ ~1
execute if entity @s[scores={eosand.pipe_num=9}] run function eosand:colors/green

# Red
execute positioned ~-26 ~-46 ~13 if entity @s[distance=..1.5,scores={eosand.pipe_num=9},y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -1

# Yellow
# execute positioned ~-26 ~-46 ~13 as @s[scores={eosand.pipe_num=9},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
# execute positioned ~-26 ~-46 ~13 as @s[scores={eosand.pipe_num=9},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green (correct)
execute positioned ~-26 ~-46 ~13 if entity @s[distance=..1.5,scores={eosand.pipe_num=9},y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.junctions 9

# Pink
# execute positioned ~-26 ~-46 ~13 as @s[scores={eosand.pipe_num=9},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 9
# execute positioned ~-26 ~-46 ~13 as @s[scores={eosand.pipe_num=9},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 9

# Cyan
execute positioned ~-26 ~-46 ~13 if entity @s[distance=..1.5,scores={eosand.pipe_num=9},x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple
execute positioned ~-26 ~-46 ~13 if entity @s[distance=..1.5,scores={eosand.pipe_num=9},x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6

# Center player in pipe immediately after junction to tp them cleanly
execute if entity @s[scores={eosand.junctions=9}] on vehicle run tp @s ~-24 ~-47 ~13
execute if entity @s[scores={eosand.junctions=9}] run scoreboard players set @s eosand.pipe_num 10
execute if entity @s[scores={eosand.junctions=9}] run scoreboard players set @s eosand.junctions 0


########################################
# Pipe 10 (green, end ~-13 ~-46 ~13)
execute positioned ~-22 ~-46 ~13 if entity @s[distance=..1.5,scores={eosand.pipe_num=10}] run playsound minecraft:block.end_portal_frame.fill player @s
execute if entity @s[scores={eosand.pipe_num=10}] on vehicle at @s run tp @s ~1 ~ ~
# execute as @s[scores={eosand.pipe_num=10}] at @s run tp @s ~1 ~ ~
execute if entity @s[scores={eosand.pipe_num=10}] run function eosand:colors/pink

# Red
# execute positioned ~-13 ~-46 ~13 as @s[scores={eosand.pipe_num=10},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -1

# Yellow
execute positioned ~-13 ~-46 ~13 if entity @s[distance=..1.5,scores={eosand.pipe_num=10},y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
execute positioned ~-13 ~-46 ~13 if entity @s[distance=..1.5,scores={eosand.pipe_num=10},y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green
# execute positioned ~-13 ~-46 ~13 as @s[scores={eosand.pipe_num=10},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 10

# Pink (correct)
execute positioned ~-13 ~-46 ~13 if entity @s[distance=..1.5,scores={eosand.pipe_num=10},y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.junctions 10
execute positioned ~-13 ~-46 ~13 if entity @s[distance=..1.5,scores={eosand.pipe_num=10},y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.junctions 10

# Cyan
execute positioned ~-13 ~-46 ~13 if entity @s[distance=..1.5,scores={eosand.pipe_num=10},x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple
execute positioned ~-13 ~-46 ~13 if entity @s[distance=..1.5,scores={eosand.pipe_num=10},x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6

# Center player in pipe immediately after junction to tp them cleanly
execute if entity @s[scores={eosand.junctions=10}] on vehicle run tp @s ~-13 ~-47 ~15
execute if entity @s[scores={eosand.junctions=10}] run scoreboard players set @s eosand.pipe_num 11
execute if entity @s[scores={eosand.junctions=10}] run scoreboard players set @s eosand.junctions 0


########################################
# Pipe 11 (pink, end ~-13 ~-46 ~26)
execute positioned ~-13 ~-46 ~17 if entity @s[distance=..1.5,scores={eosand.pipe_num=11}] run playsound minecraft:block.end_portal_frame.fill player @s
execute if entity @s[scores={eosand.pipe_num=11}] on vehicle at @s run tp @s ~ ~ ~1
# execute as @s[scores={eosand.pipe_num=11}] at @s run tp @s ~ ~ ~1
execute if entity @s[scores={eosand.pipe_num=11}] run function eosand:colors/green

# Red
execute positioned ~-13 ~-46 ~26 if entity @s[distance=..1.5,scores={eosand.pipe_num=11},y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -1

# Yellow
# execute positioned ~-13 ~-46 ~26 as @s[scores={eosand.pipe_num=11},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
# execute positioned ~-13 ~-46 ~26 as @s[scores={eosand.pipe_num=11},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green (correct)
execute positioned ~-13 ~-46 ~26 if entity @s[distance=..1.5,scores={eosand.pipe_num=11},y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.junctions 11

# Pink
# execute positioned ~-13 ~-46 ~26 as @s[scores={eosand.pipe_num=11},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 11
# execute positioned ~-13 ~-46 ~26 as @s[scores={eosand.pipe_num=11},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 11

# Cyan
execute positioned ~-13 ~-46 ~26 if entity @s[distance=..1.5,scores={eosand.pipe_num=11},x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple
execute positioned ~-13 ~-46 ~26 if entity @s[distance=..1.5,scores={eosand.pipe_num=11},x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6

# Center player in pipe immediately after junction to tp them cleanly
execute if entity @s[scores={eosand.junctions=11}] on vehicle run tp @s ~-11 ~-47 ~26
execute if entity @s[scores={eosand.junctions=11}] run scoreboard players set @s eosand.pipe_num 12
execute if entity @s[scores={eosand.junctions=11}] run scoreboard players set @s eosand.junctions 0


########################################
# Pipe 12 (green, end ~ ~-46 ~26)
execute positioned ~-9 ~-46 ~26 if entity @s[distance=..1.5,scores={eosand.pipe_num=12}] run playsound minecraft:block.end_portal_frame.fill player @s
execute if entity @s[scores={eosand.pipe_num=12}] on vehicle at @s run tp @s ~1 ~ ~
# execute as @s[scores={eosand.pipe_num=12}] at @s run tp @s ~1 ~ ~
execute if entity @s[scores={eosand.pipe_num=12}] run function eosand:colors/yellow

# Red
# execute positioned ~ ~-46 ~26 as @s[scores={eosand.pipe_num=12},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -1

# Yellow (correct)
execute positioned ~ ~-46 ~26 if entity @s[distance=..1.5,scores={eosand.pipe_num=12},y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.junctions 12
execute positioned ~ ~-46 ~26 if entity @s[distance=..1.5,scores={eosand.pipe_num=12},y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.junctions 12

# Green
# execute positioned ~ ~-46 ~26 as @s[scores={eosand.pipe_num=12},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 10

# Pink
execute positioned ~ ~-46 ~26 if entity @s[distance=..1.5,scores={eosand.pipe_num=12},y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4
execute positioned ~ ~-46 ~26 if entity @s[distance=..1.5,scores={eosand.pipe_num=12},y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4

# Cyan
execute positioned ~ ~-46 ~26 if entity @s[distance=..1.5,scores={eosand.pipe_num=12},x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple
execute positioned ~ ~-46 ~26 if entity @s[distance=..1.5,scores={eosand.pipe_num=12},x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6

# Center player in pipe immediately after junction to tp them cleanly
execute if entity @s[scores={eosand.junctions=12}] on vehicle run tp @s ~ ~-47 ~24
execute if entity @s[scores={eosand.junctions=12}] run scoreboard players set @s eosand.pipe_num 13
execute if entity @s[scores={eosand.junctions=12}] run scoreboard players set @s eosand.junctions 0


########################################
# Pipe 13 (yellow, last)
execute positioned ~ ~-46 ~22 if entity @s[distance=..1.5,scores={eosand.pipe_num=13}] run playsound minecraft:block.end_portal_frame.fill player @s
execute if entity @s[scores={eosand.pipe_num=13}] on vehicle at @s run tp @s ~ ~ ~-1
# execute as @s[scores={eosand.pipe_num=13}] at @s run tp @s ~ ~ ~-1
execute if entity @s[scores={eosand.pipe_num=13}] run function eosand:colors/gold

# End (change pipe score, play sound, set eosand.timer to 0, update pipe_num to 0)
execute positioned ~ ~-46 ~3 if entity @s[distance=..1.5,scores={eosand.pipe_num=13}] run bossbar set eosand:section_3 visible false
execute positioned ~ ~-46 ~3 if entity @s[distance=..1.5,scores={eosand.pipe_num=13}] run scoreboard players set @s eosand.pipes 4
execute positioned ~ ~-46 ~3 if entity @s[distance=..1.5,scores={eosand.pipe_num=13}] at @s run playsound minecraft:entity.player.levelup player @s
execute positioned ~ ~-46 ~3 if entity @s[distance=..1.5,scores={eosand.pipe_num=13}] run scoreboard players set @s eosand.timer 0
execute positioned ~ ~-46 ~3 if entity @s[distance=..1.5,scores={eosand.pipe_num=13}] run function eosand:colors/none

# Kill armor stand
execute positioned ~ ~-46 ~3 if entity @s[distance=..1.5,scores={eosand.pipe_num=13}] on vehicle run kill @s

execute positioned ~ ~-46 ~3 if entity @s[distance=..1.5,scores={eosand.pipe_num=13}] run scoreboard players set @s eosand.pipe_num 0


########################################
# If player dismounts at all, tp back
execute unless data entity @s RootVehicle unless score @s eosand.pipe_num matches 0 run tag @s add eosand.fail

# If player is in wrong pipe, wait until they hit the end gateway, then tp back
execute if entity @s[scores={eosand.pipe_num=-1}] at @s run tp @s ~-1 ~ ~ 90 0
execute if entity @s[scores={eosand.pipe_num=-2}] at @s run tp @s ~ ~ ~-1 180 0
execute if entity @s[scores={eosand.pipe_num=-3}] at @s run tp @s ~1 ~ ~ -90 0
execute if entity @s[scores={eosand.pipe_num=-4}] at @s run tp @s ~ ~ ~1 0 0
execute if entity @s[scores={eosand.pipe_num=-5}] at @s run tp @s ~ ~-1 ~ 180 90
execute if entity @s[scores={eosand.pipe_num=-6}] at @s run tp @s ~ ~1 ~ 180 -90

execute at @s if block ~ ~1 ~ minecraft:end_gateway run tag @s add eosand.fail
execute at @s if block ~ ~ ~ minecraft:end_gateway run tag @s add eosand.fail
execute if entity @s[tag=eosand.fail] run function eosand:colors/none
execute if entity @s[tag=eosand.fail] run tp @s ~ ~-22.5 ~ -90 0
execute if entity @s[tag=eosand.fail] at @s run playsound minecraft:entity.enderman.teleport player @s
execute if entity @s[tag=eosand.fail] run scoreboard players set @s eosand.pipe_num 0
execute if entity @s[tag=eosand.fail] run scoreboard players set @s eosand.timer 0
execute if entity @s[tag=eosand.fail] run tag @s remove eosand.fail
return 1
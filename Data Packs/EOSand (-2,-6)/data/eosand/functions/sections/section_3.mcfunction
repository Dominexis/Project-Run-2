# Section 3

# Run startup
execute positioned ~7 ~-22 ~ as @s[distance=..1.5] unless score @s eosand.pipe_num matches 1 run function eosand:sections/section_3_startup

# Teleport sounds (unless not in pipe), give levitation 255, give darkness
execute as @s at @s unless score @s eosand.pipe_num matches 0 run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 0.5
execute as @s unless score @s eosand.pipe_num matches 0 run effect give @s levitation 1 255 true
execute as @s unless score @s eosand.pipe_num matches 0 run effect give @s darkness 1 0 true

# Close door
execute positioned ~11 ~-22 ~ as @s[distance=..1.5] run fill ~-2 ~2 ~-1 ~-2 ~ ~1 glass_pane[north=true,south=true]


########################################
# Pipe 1 (gray, end ~26 ~-22 ~)
execute as @s[scores={eosand.pipe_num=1}] at @s run tp @s ~1 ~ ~
execute as @s[scores={eosand.pipe_num=1}] run function eosand:colors/cyan

# Red
# execute positioned ~26 ~-22 ~ as @s[scores={eosand.pipe_num=1},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 2

# Yellow
execute positioned ~26 ~-22 ~ as @s[scores={eosand.pipe_num=1},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
execute positioned ~26 ~-22 ~ as @s[scores={eosand.pipe_num=1},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green
# execute positioned ~26 ~-22 ~ as @s[scores={eosand.pipe_num=1},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink
execute positioned ~26 ~-22 ~ as @s[scores={eosand.pipe_num=1},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4
execute positioned ~26 ~-22 ~ as @s[scores={eosand.pipe_num=1},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4

# Cyan (correct)
execute positioned ~26 ~-22 ~ as @s[scores={eosand.pipe_num=1},distance=..1.5,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num 2

# Purple
execute positioned ~26 ~-22 ~ as @s[scores={eosand.pipe_num=1},distance=..1.5,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6


########################################
# Pipe 2 (cyan, end ~26 ~-46 ~)
execute positioned ~26 ~-25 ~ as @s[scores={eosand.pipe_num=2},distance=..1.5] run playsound block.end_portal_frame.fill player @s
execute as @s[scores={eosand.pipe_num=2}] at @s run tp @s ~ ~-1 ~
execute as @s[scores={eosand.pipe_num=2}] run function eosand:colors/yellow

# Red
execute positioned ~26 ~-46 ~ as @s[scores={eosand.pipe_num=2},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -1

# Yellow (correct)
execute positioned ~26 ~-46 ~ as @s[scores={eosand.pipe_num=2},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 3
execute positioned ~26 ~-46 ~ as @s[scores={eosand.pipe_num=2},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 3

# Green
execute positioned ~26 ~-46 ~ as @s[scores={eosand.pipe_num=2},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink
execute positioned ~26 ~-46 ~ as @s[scores={eosand.pipe_num=2},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4
execute positioned ~26 ~-46 ~ as @s[scores={eosand.pipe_num=2},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4

# Cyan
# execute positioned ~26 ~-46 ~ as @s[scores={eosand.pipe_num=2},distance=..1.5,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num 2

# Purple
# execute positioned ~26 ~-46 ~ as @s[scores={eosand.pipe_num=2},distance=..1.5,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6


########################################
# Pipe 3 (yellow, end ~26 ~-46 ~-26)
execute positioned ~26 ~-46 ~-4 as @s[scores={eosand.pipe_num=3},distance=..1.5] run playsound block.end_portal_frame.fill player @s
execute as @s[scores={eosand.pipe_num=3}] at @s run tp @s ~ ~ ~-1
execute as @s[scores={eosand.pipe_num=3}] run function eosand:colors/purple

# Red
execute positioned ~26 ~-46 ~-26 as @s[scores={eosand.pipe_num=3},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -1

# Yellow
# execute positioned ~26 ~-46 ~-26 as @s[scores={eosand.pipe_num=3},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 3
# execute positioned ~26 ~-46 ~-26 as @s[scores={eosand.pipe_num=3},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 3

# Green
execute positioned ~26 ~-46 ~-26 as @s[scores={eosand.pipe_num=3},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink
# execute positioned ~26 ~-46 ~-26 as @s[scores={eosand.pipe_num=3},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4
# execute positioned ~26 ~-46 ~-26 as @s[scores={eosand.pipe_num=3},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4

# Cyan
execute positioned ~26 ~-46 ~-26 as @s[scores={eosand.pipe_num=3},distance=..1.5,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple (correct)
execute positioned ~26 ~-46 ~-26 as @s[scores={eosand.pipe_num=3},distance=..1.5,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num 4


########################################
# Pipe 4 (purple, end ~26 ~-22 ~-26)
execute positioned ~26 ~-40 ~-26 as @s[scores={eosand.pipe_num=4},distance=..1.5] run playsound block.end_portal_frame.fill player @s
execute as @s[scores={eosand.pipe_num=4}] at @s run tp @s ~ ~1 ~
execute as @s[scores={eosand.pipe_num=4}] run function eosand:colors/red

# Red (correct)
execute positioned ~26 ~-22 ~-26 as @s[scores={eosand.pipe_num=4},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 5

# Yellow
execute positioned ~26 ~-22 ~-26 as @s[scores={eosand.pipe_num=4},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
execute positioned ~26 ~-22 ~-26 as @s[scores={eosand.pipe_num=4},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green
execute positioned ~26 ~-22 ~-26 as @s[scores={eosand.pipe_num=4},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink
execute positioned ~26 ~-22 ~-26 as @s[scores={eosand.pipe_num=4},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4
execute positioned ~26 ~-22 ~-26 as @s[scores={eosand.pipe_num=4},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4

# Cyan
# execute positioned ~26 ~-22 ~-26 as @s[scores={eosand.pipe_num=4},distance=..1.5,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple
# execute positioned ~26 ~-22 ~-26 as @s[scores={eosand.pipe_num=4},distance=..1.5,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num 4


########################################
# Pipe 5 (red, end ~ ~-22 ~-26)
execute positioned ~22 ~-22 ~-26 as @s[scores={eosand.pipe_num=5},distance=..1.5] run playsound block.end_portal_frame.fill player @s
execute as @s[scores={eosand.pipe_num=5}] at @s run tp @s ~-1 ~ ~
execute as @s[scores={eosand.pipe_num=5}] run function eosand:colors/red

# Red (correct)
execute positioned ~ ~-22 ~-26 as @s[scores={eosand.pipe_num=5},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 6

# Yellow
execute positioned ~ ~-22 ~-26 as @s[scores={eosand.pipe_num=5},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
execute positioned ~ ~-22 ~-26 as @s[scores={eosand.pipe_num=5},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green
# execute positioned ~ ~-22 ~-26 as @s[scores={eosand.pipe_num=5},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink
execute positioned ~ ~-22 ~-26 as @s[scores={eosand.pipe_num=5},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4
execute positioned ~ ~-22 ~-26 as @s[scores={eosand.pipe_num=5},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4

# Cyan
execute positioned ~ ~-22 ~-26 as @s[scores={eosand.pipe_num=5},distance=..1.5,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple
execute positioned ~ ~-22 ~-26 as @s[scores={eosand.pipe_num=5},distance=..1.5,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6


########################################
# Pipe 6 (red, end ~-26 ~-22 ~-26)
execute positioned ~-4 ~-22 ~-26 as @s[scores={eosand.pipe_num=6},distance=..1.5] run playsound block.end_portal_frame.fill player @s
execute as @s[scores={eosand.pipe_num=6}] at @s run tp @s ~-1 ~ ~
execute as @s[scores={eosand.pipe_num=6}] run function eosand:colors/pink

# Red
# execute positioned ~-26 ~-22 ~-26 as @s[scores={eosand.pipe_num=6},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 6

# Yellow
execute positioned ~-26 ~-22 ~-26 as @s[scores={eosand.pipe_num=6},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
execute positioned ~-26 ~-22 ~-26 as @s[scores={eosand.pipe_num=6},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green
# execute positioned ~-26 ~-22 ~-26 as @s[scores={eosand.pipe_num=6},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink (correct)
execute positioned ~-26 ~-22 ~-26 as @s[scores={eosand.pipe_num=6},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 7
execute positioned ~-26 ~-22 ~-26 as @s[scores={eosand.pipe_num=6},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 7

# Cyan
execute positioned ~-26 ~-22 ~-26 as @s[scores={eosand.pipe_num=6},distance=..1.5,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple
execute positioned ~-26 ~-22 ~-26 as @s[scores={eosand.pipe_num=6},distance=..1.5,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6


########################################
# Pipe 7 (pink, end ~-26 ~-22 ~-13)
execute positioned ~-26 ~-22 ~-22 as @s[scores={eosand.pipe_num=7},distance=..1.5] run playsound block.end_portal_frame.fill player @s
execute as @s[scores={eosand.pipe_num=7}] at @s run tp @s ~ ~ ~1
execute as @s[scores={eosand.pipe_num=7}] run function eosand:colors/cyan

# Red
execute positioned ~-26 ~-22 ~-13 as @s[scores={eosand.pipe_num=7},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -1

# Yellow
# execute positioned ~-26 ~-22 ~-13 as @s[scores={eosand.pipe_num=7},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
# execute positioned ~-26 ~-22 ~-13 as @s[scores={eosand.pipe_num=7},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green
execute positioned ~-26 ~-22 ~-13 as @s[scores={eosand.pipe_num=7},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink
# execute positioned ~-26 ~-22 ~-13 as @s[scores={eosand.pipe_num=7},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 7
# execute positioned ~-26 ~-22 ~-13 as @s[scores={eosand.pipe_num=7},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 7

# Cyan (correct)
execute positioned ~-26 ~-22 ~-13 as @s[scores={eosand.pipe_num=7},distance=..1.5,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num 8

# Purple
execute positioned ~-26 ~-22 ~-13 as @s[scores={eosand.pipe_num=7},distance=..1.5,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6


########################################
# Pipe 8 (cyan, end ~-26 ~-46 ~-13)
execute positioned ~-26 ~-25 ~-13 as @s[scores={eosand.pipe_num=8},distance=..1.5] run playsound block.end_portal_frame.fill player @s
execute as @s[scores={eosand.pipe_num=8}] at @s run tp @s ~ ~-1 ~
execute as @s[scores={eosand.pipe_num=8}] run function eosand:colors/pink

# Red
execute positioned ~-26 ~-46 ~-13 as @s[scores={eosand.pipe_num=8},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -1

# Yellow
execute positioned ~-26 ~-46 ~-13 as @s[scores={eosand.pipe_num=8},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
execute positioned ~-26 ~-46 ~-13 as @s[scores={eosand.pipe_num=8},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green
execute positioned ~-26 ~-46 ~-13 as @s[scores={eosand.pipe_num=8},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink (correct)
execute positioned ~-26 ~-46 ~-13 as @s[scores={eosand.pipe_num=8},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 9
execute positioned ~-26 ~-46 ~-13 as @s[scores={eosand.pipe_num=8},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 9

# Cyan
# execute positioned ~-26 ~-46 ~-13 as @s[scores={eosand.pipe_num=8},distance=..1.5,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num 8

# Purple
# execute positioned ~-26 ~-46 ~-13 as @s[scores={eosand.pipe_num=8},distance=..1.5,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6


########################################
# Pipe 9 (pink, end ~-26 ~-46 ~13)
execute positioned ~-26 ~-46 ~-9 as @s[scores={eosand.pipe_num=9},distance=..1.5] run playsound block.end_portal_frame.fill player @s
execute as @s[scores={eosand.pipe_num=9}] at @s run tp @s ~ ~ ~1
execute as @s[scores={eosand.pipe_num=9}] run function eosand:colors/green

# Red
execute positioned ~-26 ~-46 ~13 as @s[scores={eosand.pipe_num=9},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -1

# Yellow
# execute positioned ~-26 ~-46 ~13 as @s[scores={eosand.pipe_num=9},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
# execute positioned ~-26 ~-46 ~13 as @s[scores={eosand.pipe_num=9},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green (correct)
execute positioned ~-26 ~-46 ~13 as @s[scores={eosand.pipe_num=9},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 10

# Pink
# execute positioned ~-26 ~-46 ~13 as @s[scores={eosand.pipe_num=9},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 9
# execute positioned ~-26 ~-46 ~13 as @s[scores={eosand.pipe_num=9},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 9

# Cyan
execute positioned ~-26 ~-46 ~13 as @s[scores={eosand.pipe_num=9},distance=..1.5,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple
execute positioned ~-26 ~-46 ~13 as @s[scores={eosand.pipe_num=9},distance=..1.5,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6


########################################
# Pipe 10 (green, end ~-13 ~-46 ~13)
execute positioned ~-22 ~-46 ~13 as @s[scores={eosand.pipe_num=10},distance=..1.5] run playsound block.end_portal_frame.fill player @s
execute as @s[scores={eosand.pipe_num=10}] at @s run tp @s ~1 ~ ~
execute as @s[scores={eosand.pipe_num=10}] run function eosand:colors/pink

# Red
# execute positioned ~-13 ~-46 ~13 as @s[scores={eosand.pipe_num=10},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -1

# Yellow
execute positioned ~-13 ~-46 ~13 as @s[scores={eosand.pipe_num=10},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
execute positioned ~-13 ~-46 ~13 as @s[scores={eosand.pipe_num=10},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green
# execute positioned ~-13 ~-46 ~13 as @s[scores={eosand.pipe_num=10},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 10

# Pink (correct)
execute positioned ~-13 ~-46 ~13 as @s[scores={eosand.pipe_num=10},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 11
execute positioned ~-13 ~-46 ~13 as @s[scores={eosand.pipe_num=10},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 11

# Cyan
execute positioned ~-13 ~-46 ~13 as @s[scores={eosand.pipe_num=10},distance=..1.5,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple
execute positioned ~-13 ~-46 ~13 as @s[scores={eosand.pipe_num=10},distance=..1.5,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6


########################################
# Pipe 11 (pink, end ~-13 ~-46 ~26)
execute positioned ~-13 ~-46 ~17 as @s[scores={eosand.pipe_num=11},distance=..1.5] run playsound block.end_portal_frame.fill player @s
execute as @s[scores={eosand.pipe_num=11}] at @s run tp @s ~ ~ ~1
execute as @s[scores={eosand.pipe_num=11}] run function eosand:colors/green

# Red
execute positioned ~-13 ~-46 ~26 as @s[scores={eosand.pipe_num=11},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -1

# Yellow
# execute positioned ~-13 ~-46 ~26 as @s[scores={eosand.pipe_num=11},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
# execute positioned ~-13 ~-46 ~26 as @s[scores={eosand.pipe_num=11},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green (correct)
execute positioned ~-13 ~-46 ~26 as @s[scores={eosand.pipe_num=11},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 12

# Pink
# execute positioned ~-13 ~-46 ~26 as @s[scores={eosand.pipe_num=11},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 11
# execute positioned ~-13 ~-46 ~26 as @s[scores={eosand.pipe_num=11},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 11

# Cyan
execute positioned ~-13 ~-46 ~26 as @s[scores={eosand.pipe_num=11},distance=..1.5,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple
execute positioned ~-13 ~-46 ~26 as @s[scores={eosand.pipe_num=11},distance=..1.5,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6


########################################
# Pipe 12 (green, end ~ ~-46 ~26)
execute positioned ~-9 ~-46 ~26 as @s[scores={eosand.pipe_num=12},distance=..1.5] run playsound block.end_portal_frame.fill player @s
execute as @s[scores={eosand.pipe_num=12}] at @s run tp @s ~1 ~ ~
execute as @s[scores={eosand.pipe_num=12}] run function eosand:colors/yellow

# Red
# execute positioned ~ ~-46 ~26 as @s[scores={eosand.pipe_num=12},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -1

# Yellow (correct)
execute positioned ~ ~-46 ~26 as @s[scores={eosand.pipe_num=12},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 13
execute positioned ~ ~-46 ~26 as @s[scores={eosand.pipe_num=12},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 13

# Green
# execute positioned ~ ~-46 ~26 as @s[scores={eosand.pipe_num=12},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 10

# Pink
execute positioned ~ ~-46 ~26 as @s[scores={eosand.pipe_num=12},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4
execute positioned ~ ~-46 ~26 as @s[scores={eosand.pipe_num=12},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4

# Cyan
execute positioned ~ ~-46 ~26 as @s[scores={eosand.pipe_num=12},distance=..1.5,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple
execute positioned ~ ~-46 ~26 as @s[scores={eosand.pipe_num=12},distance=..1.5,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6


########################################
# Pipe 13 (yellow, last)
execute positioned ~ ~-46 ~22 as @s[scores={eosand.pipe_num=13},distance=..1.5] run playsound block.end_portal_frame.fill player @s
execute as @s[scores={eosand.pipe_num=13}] at @s run tp @s ~ ~ ~-1
execute as @s[scores={eosand.pipe_num=13}] run function eosand:colors/gold

# End (change pipe score, play sound, set eosand.timer to 0, update pipe_num to 0)
execute positioned ~ ~-46 ~7 as @s[scores={eosand.pipe_num=13},distance=..1.5] run bossbar set eosand:section_3 visible false
execute positioned ~ ~-46 ~7 as @s[scores={eosand.pipe_num=13},distance=..1.5] run scoreboard players set @s eosand.pipes 4
execute positioned ~ ~-46 ~7 as @s[scores={eosand.pipe_num=13},distance=..1.5] at @s run playsound entity.player.levelup player @s
execute positioned ~ ~-46 ~7 as @s[scores={eosand.pipe_num=13},distance=..1.5] run scoreboard players set @s eosand.timer 0
execute positioned ~ ~-46 ~7 as @s[scores={eosand.pipe_num=13},distance=..1.5] run function eosand:colors/none
execute positioned ~ ~-46 ~7 as @s[scores={eosand.pipe_num=13},distance=..1.5] run scoreboard players set @s eosand.pipe_num 0


########################################
# If player is in wrong pipe, wait until they hit the end gateway, then tp back
execute as @s[scores={eosand.pipe_num=-1}] at @s run tp @s ~-1 ~ ~ 90 0
execute as @s[scores={eosand.pipe_num=-2}] at @s run tp @s ~ ~ ~-1 180 0
execute as @s[scores={eosand.pipe_num=-3}] at @s run tp @s ~1 ~ ~ -90 0
execute as @s[scores={eosand.pipe_num=-4}] at @s run tp @s ~ ~ ~1 0 0
execute as @s[scores={eosand.pipe_num=-5}] at @s run tp @s ~ ~-1 ~ 180 90
execute as @s[scores={eosand.pipe_num=-6}] at @s run tp @s ~ ~1 ~ 180 -90

execute as @s at @s if block ~ ~1 ~ end_gateway run tag @s add eosand.fail
execute as @s at @s if block ~ ~ ~ end_gateway run tag @s add eosand.fail
execute as @s[tag=eosand.fail] run function eosand:colors/none
execute as @s[tag=eosand.fail] run tp @s ~ ~-22.5 ~ -90 0
execute as @s[tag=eosand.fail] at @s run playsound entity.enderman.teleport player @s
execute as @s[tag=eosand.fail] run scoreboard players set @s eosand.pipe_num 0
execute as @s[tag=eosand.fail] run scoreboard players set @s eosand.timer 0
execute as @s[tag=eosand.fail] run tag @s remove eosand.fail
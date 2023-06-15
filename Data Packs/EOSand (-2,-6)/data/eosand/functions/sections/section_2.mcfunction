# Section 2

# Run startup
execute positioned ~7 ~26 ~ as @s[distance=..1.5] unless score @s eosand.pipe_num matches 1 run function eosand:sections/section_2_startup

# Teleport sounds (unless not in pipe), give levitation 255, give darkness
execute as @s at @s unless score @s eosand.pipe_num matches 0 run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 0.5
execute as @s unless score @s eosand.pipe_num matches 0 run effect give @s levitation 1 255 true
execute as @s unless score @s eosand.pipe_num matches 0 run effect give @s darkness 1 0 true

# Close door
execute positioned ~11 ~26 ~0 as @s[distance=..1.5] run fill ~-2 ~2 ~-1 ~-2 ~ ~1 glass_pane[north=true,south=true]


########################################
# Pipe 1 (gray, end ~26 ~26 ~)
execute as @s[scores={eosand.pipe_num=1}] at @s run tp @s ~1 ~ ~
execute as @s[scores={eosand.pipe_num=1}] run function eosand:colors/yellow

# Red
# execute positioned ~26 ~26 ~ as @s[scores={eosand.pipe_num=1},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 2

# Yellow (correct)
execute positioned ~26 ~26 ~ as @s[scores={eosand.pipe_num=1},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 2
execute positioned ~26 ~26 ~ as @s[scores={eosand.pipe_num=1},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 2

# Green
# execute positioned ~26 ~26 ~ as @s[scores={eosand.pipe_num=1},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink
execute positioned ~26 ~26 ~ as @s[scores={eosand.pipe_num=1},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4
execute positioned ~26 ~26 ~ as @s[scores={eosand.pipe_num=1},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4

# Cyan
execute positioned ~26 ~26 ~ as @s[scores={eosand.pipe_num=1},distance=..1.5,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple
execute positioned ~26 ~26 ~ as @s[scores={eosand.pipe_num=1},distance=..1.5,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6


########################################
# Pipe 2 (yellow, end ~26 ~26 ~-26)
execute positioned ~26 ~26 ~-4 as @s[scores={eosand.pipe_num=2},distance=..1.5] run playsound block.end_portal_frame.fill player @s
execute as @s[scores={eosand.pipe_num=2}] at @s run tp @s ~ ~ ~-1
execute as @s[scores={eosand.pipe_num=2}] run function eosand:colors/cyan

# Red
execute positioned ~26 ~26 ~-26 as @s[scores={eosand.pipe_num=2},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Yellow
# execute positioned ~26 ~26 ~-26 as @s[scores={eosand.pipe_num=2},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 2
# execute positioned ~26 ~26 ~-26 as @s[scores={eosand.pipe_num=2},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 2

# Green
execute positioned ~26 ~26 ~-26 as @s[scores={eosand.pipe_num=2},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink
# execute positioned ~26 ~26 ~-26 as @s[scores={eosand.pipe_num=2},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4
# execute positioned ~26 ~26 ~-26 as @s[scores={eosand.pipe_num=2},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4

# Cyan (correct)
execute positioned ~26 ~26 ~-26 as @s[scores={eosand.pipe_num=2},distance=..1.5,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num 3

# Purple
execute positioned ~26 ~26 ~-26 as @s[scores={eosand.pipe_num=2},distance=..1.5,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6


########################################
# Pipe 3 (cyan, end ~26 ~2 ~-26)
execute positioned ~26 ~23 ~-26 as @s[scores={eosand.pipe_num=3},distance=..1.5] run playsound block.end_portal_frame.fill player @s
execute as @s[scores={eosand.pipe_num=3}] at @s run tp @s ~ ~-1 ~
execute as @s[scores={eosand.pipe_num=3}] run function eosand:colors/pink

# Red
execute positioned ~26 ~2 ~-26 as @s[scores={eosand.pipe_num=3},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -1

# Yellow
execute positioned ~26 ~2 ~-26 as @s[scores={eosand.pipe_num=3},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
execute positioned ~26 ~2 ~-26 as @s[scores={eosand.pipe_num=3},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green
execute positioned ~26 ~2 ~-26 as @s[scores={eosand.pipe_num=3},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink (correct)
execute positioned ~26 ~2 ~-26 as @s[scores={eosand.pipe_num=3},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 4
execute positioned ~26 ~2 ~-26 as @s[scores={eosand.pipe_num=3},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 4

# Cyan
execute positioned ~26 ~2 ~-26 as @s[scores={eosand.pipe_num=3},distance=..1.5,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple
# execute positioned ~26 ~2 ~-26 as @s[scores={eosand.pipe_num=3},distance=..1.5,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6


########################################
# Pipe 4 (pink, end ~26 ~2 ~)
execute positioned ~26 ~2 ~-22 as @s[scores={eosand.pipe_num=4},distance=..1.5] run playsound block.end_portal_frame.fill player @s
execute as @s[scores={eosand.pipe_num=4}] at @s run tp @s ~ ~ ~1
execute as @s[scores={eosand.pipe_num=4}] run function eosand:colors/pink

# Red
execute positioned ~26 ~2 ~ as @s[scores={eosand.pipe_num=4},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -1

# Yellow
# execute positioned ~26 ~2 ~ as @s[scores={eosand.pipe_num=4},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
# execute positioned ~26 ~2 ~ as @s[scores={eosand.pipe_num=4},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green
execute positioned ~26 ~2 ~ as @s[scores={eosand.pipe_num=4},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink (correct)
execute positioned ~26 ~2 ~ as @s[scores={eosand.pipe_num=4},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 5
execute positioned ~26 ~2 ~ as @s[scores={eosand.pipe_num=4},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 5

# Cyan
execute positioned ~26 ~2 ~ as @s[scores={eosand.pipe_num=4},distance=..1.5,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple
execute positioned ~26 ~2 ~ as @s[scores={eosand.pipe_num=4},distance=..1.5,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6


########################################
# Pipe 5 (pink, end ~26 ~2 ~26)
execute positioned ~26 ~2 ~4 as @s[scores={eosand.pipe_num=5},distance=..1.5] run playsound block.end_portal_frame.fill player @s
execute as @s[scores={eosand.pipe_num=5}] at @s run tp @s ~ ~ ~1
execute as @s[scores={eosand.pipe_num=5}] run function eosand:colors/red

# Red (correct)
execute positioned ~26 ~2 ~26 as @s[scores={eosand.pipe_num=5},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 6

# Yellow
# execute positioned ~26 ~2 ~26 as @s[scores={eosand.pipe_num=5},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
# execute positioned ~26 ~2 ~26 as @s[scores={eosand.pipe_num=5},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green
execute positioned ~26 ~2 ~26 as @s[scores={eosand.pipe_num=5},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink
# execute positioned ~26 ~2 ~26 as @s[scores={eosand.pipe_num=5},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 5
# execute positioned ~26 ~2 ~26 as @s[scores={eosand.pipe_num=5},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 5

# Cyan
execute positioned ~26 ~2 ~26 as @s[scores={eosand.pipe_num=5},distance=..1.5,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple
execute positioned ~26 ~2 ~26 as @s[scores={eosand.pipe_num=5},distance=..1.5,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6


########################################
# Pipe 6 (red, end ~13 ~2 ~26)
execute positioned ~22 ~2 ~26 as @s[scores={eosand.pipe_num=6},distance=..1.5] run playsound block.end_portal_frame.fill player @s
execute as @s[scores={eosand.pipe_num=6}] at @s run tp @s ~-1 ~ ~
execute as @s[scores={eosand.pipe_num=6}] run function eosand:colors/cyan

# Red
# execute positioned ~13 ~2 ~26 as @s[scores={eosand.pipe_num=6},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 6

# Yellow
execute positioned ~13 ~2 ~26 as @s[scores={eosand.pipe_num=6},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
execute positioned ~13 ~2 ~26 as @s[scores={eosand.pipe_num=6},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green
# execute positioned ~13 ~2 ~26 as @s[scores={eosand.pipe_num=6},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink
execute positioned ~13 ~2 ~26 as @s[scores={eosand.pipe_num=6},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4
execute positioned ~13 ~2 ~26 as @s[scores={eosand.pipe_num=6},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4

# Cyan (correct)
execute positioned ~13 ~2 ~26 as @s[scores={eosand.pipe_num=6},distance=..1.5,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num 7

# Purple
execute positioned ~13 ~2 ~26 as @s[scores={eosand.pipe_num=6},distance=..1.5,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6


########################################
# Pipe 7 (cyan, end ~13 ~-22 ~26)
execute positioned ~13 ~-1 ~26 as @s[scores={eosand.pipe_num=7},distance=..1.5] run playsound block.end_portal_frame.fill player @s
execute as @s[scores={eosand.pipe_num=7}] at @s run tp @s ~ ~-1 ~
execute as @s[scores={eosand.pipe_num=7}] run function eosand:colors/red

# Red (correct)
execute positioned ~13 ~-22 ~26 as @s[scores={eosand.pipe_num=7},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 8

# Yellow
execute positioned ~13 ~-22 ~26 as @s[scores={eosand.pipe_num=7},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
execute positioned ~13 ~-22 ~26 as @s[scores={eosand.pipe_num=7},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green
execute positioned ~13 ~-22 ~26 as @s[scores={eosand.pipe_num=7},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink
execute positioned ~13 ~-22 ~26 as @s[scores={eosand.pipe_num=7},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4
execute positioned ~13 ~-22 ~26 as @s[scores={eosand.pipe_num=7},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4

# Cyan
# execute positioned ~13 ~-22 ~26 as @s[scores={eosand.pipe_num=7},distance=..1.5,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num 7

# Purple
# execute positioned ~13 ~-22 ~26 as @s[scores={eosand.pipe_num=7},distance=..1.5,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6


########################################
# Pipe 8 (red, end ~-26 ~-22 ~26)
execute positioned ~9 ~-22 ~26 as @s[scores={eosand.pipe_num=8},distance=..1.5] run playsound block.end_portal_frame.fill player @s
execute as @s[scores={eosand.pipe_num=8}] at @s run tp @s ~-1 ~ ~
execute as @s[scores={eosand.pipe_num=8}] run function eosand:colors/yellow

# Red
# execute positioned ~-26 ~-22 ~26 as @s[scores={eosand.pipe_num=8},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 8

# Yellow (correct)
execute positioned ~-26 ~-22 ~26 as @s[scores={eosand.pipe_num=8},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 9
execute positioned ~-26 ~-22 ~26 as @s[scores={eosand.pipe_num=8},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 9

# Green
# execute positioned ~-26 ~-22 ~26 as @s[scores={eosand.pipe_num=8},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink
execute positioned ~-26 ~-22 ~26 as @s[scores={eosand.pipe_num=8},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4
execute positioned ~-26 ~-22 ~26 as @s[scores={eosand.pipe_num=8},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4

# Cyan
execute positioned ~-26 ~-22 ~26 as @s[scores={eosand.pipe_num=8},distance=..1.5,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple
execute positioned ~-26 ~-22 ~26 as @s[scores={eosand.pipe_num=8},distance=..1.5,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6


########################################
# Pipe 9 (yellow, end ~-26 ~-22 ~)
execute positioned ~-26 ~-22 ~22 as @s[scores={eosand.pipe_num=9},distance=..1.5] run playsound block.end_portal_frame.fill player @s
execute as @s[scores={eosand.pipe_num=9}] at @s run tp @s ~ ~ ~-1
execute as @s[scores={eosand.pipe_num=9}] run function eosand:colors/green

# Red
execute positioned ~-26 ~-22 ~ as @s[scores={eosand.pipe_num=9},distance=..1.5,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -1

# Yellow
# execute positioned ~-26 ~-22 ~ as @s[scores={eosand.pipe_num=9},distance=..1.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 9
# execute positioned ~-26 ~-22 ~ as @s[scores={eosand.pipe_num=9},distance=..1.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 9

# Green (correct)
execute positioned ~-26 ~-22 ~ as @s[scores={eosand.pipe_num=9},distance=..1.5,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 10

# Pink
# execute positioned ~-26 ~-22 ~ as @s[scores={eosand.pipe_num=9},distance=..1.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4
# execute positioned ~-26 ~-22 ~ as @s[scores={eosand.pipe_num=9},distance=..1.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4

# Cyan
execute positioned ~-26 ~-22 ~ as @s[scores={eosand.pipe_num=9},distance=..1.5,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple
execute positioned ~-26 ~-22 ~ as @s[scores={eosand.pipe_num=9},distance=..1.5,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6


########################################
# Pipe 10 (green, last)
execute positioned ~-22 ~-22 ~ as @s[scores={eosand.pipe_num=10},distance=..1.5] run playsound block.end_portal_frame.fill player @s
execute as @s[scores={eosand.pipe_num=10}] at @s run tp @s ~1 ~ ~
execute as @s[scores={eosand.pipe_num=10}] run function eosand:colors/gold

# End (change pipe score, play sound, set eosand.timer to 0, update pipe_num to 0)
execute positioned ~-7 ~-22 ~ as @s[scores={eosand.pipe_num=10},distance=..1.5] run bossbar set eosand:section_2 visible false
execute positioned ~-7 ~-22 ~ as @s[scores={eosand.pipe_num=10},distance=..1.5] run scoreboard players set @s eosand.pipes 3
execute positioned ~-7 ~-22 ~ as @s[scores={eosand.pipe_num=10},distance=..1.5] at @s run playsound entity.player.levelup player @s
execute positioned ~-7 ~-22 ~ as @s[scores={eosand.pipe_num=10},distance=..1.5] run scoreboard players set @s eosand.timer 0
execute positioned ~-7 ~-22 ~ as @s[scores={eosand.pipe_num=10},distance=..1.5] run function eosand:colors/none
execute positioned ~-7 ~-22 ~ as @s[scores={eosand.pipe_num=10},distance=..1.5] run scoreboard players set @s eosand.pipe_num 0


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
execute as @s[tag=eosand.fail] run tp @s ~ ~25.5 ~ -90 0
execute as @s[tag=eosand.fail] at @s run playsound entity.enderman.teleport player @s
execute as @s[tag=eosand.fail] run scoreboard players set @s eosand.pipe_num 0
execute as @s[tag=eosand.fail] run scoreboard players set @s eosand.timer 0
execute as @s[tag=eosand.fail] run tag @s remove eosand.fail
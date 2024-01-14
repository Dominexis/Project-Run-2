# Section 1

# Run startup
execute positioned ~ ~2 ~-7 if entity @s[distance=..1.5] unless score @s eosand.pipe_num matches 1 run function eosand:sections/section_1_startup

# Teleport sounds (unless not in pipe), give levitation 255, give darkness
execute at @s unless score @s eosand.pipe_num matches 0 run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 0.5
# execute as @s unless score @s eosand.pipe_num matches 0 run effect give @s levitation 1 255 true
execute unless score @s eosand.pipe_num matches 0 run effect give @s minecraft:darkness 1 0 true

# Close door
execute positioned ~ ~2 ~-26 if entity @s[dx=1,dy=1,dz=1] run fill ~-1 ~2 ~17 ~1 ~ ~17 minecraft:glass_pane[east=true,west=true]


########################################
# Pipe 1 (gray, end ~ ~2 ~-26)
execute if entity @s[scores={eosand.pipe_num=1}] on vehicle at @s run tp @s ~ ~ ~-1
# execute as @s[scores={eosand.pipe_num=1}] at @s run tp @s ~ ~ ~-1
execute if entity @s[scores={eosand.pipe_num=1}] run function eosand:colors/red

# Red (correct)
execute positioned ~ ~2 ~-26 if entity @s[distance=..0.5,scores={eosand.pipe_num=1},y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.junctions 1

# Yellow
# execute positioned ~ ~2 ~-27 as @s[scores={eosand.pipe_num=1},dx=1,dy=1,dz=3,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
# execute positioned ~ ~2 ~-27 as @s[scores={eosand.pipe_num=1},dx=1,dy=1,dz=3,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green
execute positioned ~ ~2 ~-26 if entity @s[distance=..0.5,scores={eosand.pipe_num=1},y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink
# execute positioned ~ ~2 ~-26 as @s[scores={eosand.pipe_num=1},dx=1,dy=1,dz=1,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4
# execute positioned ~ ~2 ~-26 as @s[scores={eosand.pipe_num=1},dx=1,dy=1,dz=1,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4

# Cyan
execute positioned ~ ~2 ~-26 if entity @s[distance=..0.5,scores={eosand.pipe_num=1},x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple
execute positioned ~ ~2 ~-26 if entity @s[distance=..0.5,scores={eosand.pipe_num=1},x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6

# Center player in pipe immediately after junction to tp them cleanly
execute if entity @s[scores={eosand.junctions=1}] on vehicle run tp @s ~-2 ~1 ~-26
execute if entity @s[scores={eosand.junctions=1}] run scoreboard players set @s eosand.pipe_num 2
execute if entity @s[scores={eosand.junctions=1}] run scoreboard players set @s eosand.junctions 0


########################################
# Pipe 2 (red, end ~-26 ~2 ~-26)
execute positioned ~-2 ~2 ~-26 if entity @s[dx=0,dy=1,dz=1,scores={eosand.pipe_num=2}] run playsound minecraft:block.end_portal_frame.fill player @s
execute if entity @s[scores={eosand.pipe_num=2}] on vehicle at @s run tp @s ~-1 ~ ~
# execute as @s[scores={eosand.pipe_num=2}] at @s run tp @s ~-1 ~ ~
execute if entity @s[scores={eosand.pipe_num=2}] run function eosand:colors/purple

# Red
# execute positioned ~-26 ~2 ~-26 as @a[scores={eosand.pipes=1,eosand.pipe_num=1},dx=1,dy=1,dz=1,y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 2

# Yellow
execute positioned ~-26 ~2 ~-26 if entity @s[distance=..0.5,scores={eosand.pipe_num=2},y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
execute positioned ~-26 ~2 ~-26 if entity @s[distance=..0.5,scores={eosand.pipe_num=2},y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green
# execute positioned ~-26 ~2 ~-26 as @a[scores={eosand.pipes=1,eosand.pipe_num=1},dx=1,dy=1,dz=1,y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink
execute positioned ~-26 ~2 ~-26 if entity @s[distance=..0.5,scores={eosand.pipe_num=2},y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4
execute positioned ~-26 ~2 ~-26 if entity @s[distance=..0.5,scores={eosand.pipe_num=2},y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -4

# Cyan
execute positioned ~-26 ~2 ~-26 if entity @s[distance=..0.5,scores={eosand.pipe_num=2},x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple (correct)
execute positioned ~-26 ~2 ~-26 if entity @s[distance=..0.5,scores={eosand.pipe_num=2},x_rotation=-90..-45] run scoreboard players set @s eosand.junctions 2

# Center player in pipe immediately after junction to tp them cleanly
execute if entity @s[scores={eosand.junctions=2}] on vehicle run tp @s ~-26 ~5 ~-26
execute if entity @s[scores={eosand.junctions=2}] run scoreboard players set @s eosand.pipe_num 3
execute if entity @s[scores={eosand.junctions=2}] run scoreboard players set @s eosand.junctions 0


########################################
# Pipe 3 (purple, end ~-26 ~26 ~-26)
execute positioned ~-26 ~5 ~-26 if entity @s[dx=1,dy=0,dz=1,scores={eosand.pipe_num=3}] run playsound minecraft:block.end_portal_frame.fill player @s
execute if entity @s[scores={eosand.pipe_num=3}] on vehicle at @s run tp @s ~ ~1 ~
# execute as @s[scores={eosand.pipe_num=3}] at @s run tp @s ~ ~1 ~
execute if entity @s[scores={eosand.pipe_num=3}] run function eosand:colors/pink

# Red
execute positioned ~-26 ~26 ~-26 if entity @s[distance=..0.5,scores={eosand.pipe_num=3},y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -1

# Yellow
execute positioned ~-26 ~26 ~-26 if entity @s[distance=..0.5,scores={eosand.pipe_num=3},y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
execute positioned ~-26 ~26 ~-26 if entity @s[distance=..0.5,scores={eosand.pipe_num=3},y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green
execute positioned ~-26 ~26 ~-26 if entity @s[distance=..0.5,scores={eosand.pipe_num=3},y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -3

# Pink (correct)
execute positioned ~-26 ~26 ~-26 if entity @s[distance=..0.5,scores={eosand.pipe_num=3},y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.junctions 3
execute positioned ~-26 ~26 ~-26 if entity @s[distance=..0.5,scores={eosand.pipe_num=3},y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.junctions 3

# Cyan
# execute positioned ~-27 ~2 ~-27 as @a[scores={eosand.pipes=1,eosand.pipe_num=1},dx=1,dy=1,dz=1,x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple
# execute positioned ~-27 ~2 ~-27 as @a[scores={eosand.pipes=1,eosand.pipe_num=1},dx=1,dy=1,dz=1,x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num 3

# Center player in pipe immediately after junction to tp them cleanly
execute if entity @s[scores={eosand.junctions=3}] on vehicle run tp @s ~-26 ~25 ~-24
execute if entity @s[scores={eosand.junctions=3}] run scoreboard players set @s eosand.pipe_num 4
execute if entity @s[scores={eosand.junctions=3}] run scoreboard players set @s eosand.junctions 0


########################################
# Pipe 4 (pink, end ~-26 ~26 ~)
execute positioned ~-27 ~26 ~-24 if entity @s[dx=1,dy=1,dz=0,scores={eosand.pipe_num=4}] run playsound minecraft:block.end_portal_frame.fill player @s
execute if entity @s[scores={eosand.pipe_num=4}] on vehicle at @s run tp @s ~ ~ ~1
# execute as @s[scores={eosand.pipe_num=4}] at @s run tp @s ~ ~ ~1
execute if entity @s[scores={eosand.pipe_num=4}] run function eosand:colors/green

# Red
execute positioned ~-26 ~26 ~ if entity @s[distance=..0.5,scores={eosand.pipe_num=4},y_rotation=45..135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -1

# Yellow
# execute positioned ~-26 ~26 ~-26 as @s[scores={eosand.pipe_num=3},distance=..0.5,y_rotation=135..180,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2
# execute positioned ~-26 ~26 ~-26 as @s[scores={eosand.pipe_num=3},distance=..0.5,y_rotation=-180..-135,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num -2

# Green (correct)
execute positioned ~-26 ~26 ~ if entity @s[distance=..0.5,scores={eosand.pipe_num=4},y_rotation=-135..-45,x_rotation=-45..45] run scoreboard players set @s eosand.junctions 4

# Pink
# execute positioned ~-26 ~26 ~-26 as @s[scores={eosand.pipe_num=3},distance=..0.5,y_rotation=-45..0,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 4
# execute positioned ~-26 ~26 ~-26 as @s[scores={eosand.pipe_num=3},distance=..0.5,y_rotation=0..45,x_rotation=-45..45] run scoreboard players set @s eosand.pipe_num 4

# Cyan
execute positioned ~-26 ~26 ~-26 as @a[distance=..0.5,scores={eosand.pipe_num=4},x_rotation=45..90] run scoreboard players set @s eosand.pipe_num -5

# Purple
execute positioned ~-26 ~26 ~-26 as @a[distance=..0.5,scores={eosand.pipe_num=4},x_rotation=-90..-45] run scoreboard players set @s eosand.pipe_num -6

# Center player in pipe immediately after junction to tp them cleanly
execute if entity @s[scores={eosand.junctions=4}] on vehicle run tp @s ~-24 ~25 ~
execute if entity @s[scores={eosand.junctions=4}] run scoreboard players set @s eosand.pipe_num 5
execute if entity @s[scores={eosand.junctions=4}] run scoreboard players set @s eosand.junctions 0


########################################
# Pipe 5 (green, last)
execute positioned ~-26 ~26 ~-1 if entity @s[dx=0,dy=1,dz=1,scores={eosand.pipe_num=5}] run playsound minecraft:block.end_portal_frame.fill player @s
execute if entity @s[scores={eosand.pipe_num=5}] on vehicle at @s run tp @s ~1 ~ ~
# execute as @s[scores={eosand.pipe_num=5}] at @s run tp @s ~1 ~ ~
execute if entity @s[scores={eosand.pipe_num=5}] run function eosand:colors/gold

# End (change pipe score, play sound, set eosand.timer to 0, update pipe_num to 0)
execute positioned ~-4 ~26 ~ if entity @s[distance=..0.5,scores={eosand.pipe_num=5}] run scoreboard players set @s eosand.pipes 2
execute positioned ~-4 ~26 ~ if entity @s[distance=..0.5,scores={eosand.pipe_num=5}] at @s run playsound minecraft:entity.player.levelup player @s
execute positioned ~-4 ~26 ~ if entity @s[distance=..0.5,scores={eosand.pipe_num=5}] run scoreboard players set @s eosand.timer 0
execute positioned ~-4 ~26 ~ if entity @s[distance=..0.5,scores={eosand.pipe_num=5}] run function eosand:colors/none

# Kill armor stand
execute positioned ~-4 ~26 ~ if entity @s[distance=..0.5,scores={eosand.pipe_num=5}] on vehicle run kill @s

execute positioned ~-4 ~26 ~ if entity @s[distance=..0.5,scores={eosand.pipe_num=5}] run scoreboard players set @s eosand.pipe_num 0


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
execute if entity @s[tag=eosand.fail] run tp @s ~ ~1.5 ~ 180 0
execute if entity @s[tag=eosand.fail] at @s run playsound minecraft:entity.enderman.teleport player @s
execute if entity @s[tag=eosand.fail] run scoreboard players set @s eosand.pipe_num 0
execute if entity @s[tag=eosand.fail] run scoreboard players set @s eosand.timer 0
execute if entity @s[tag=eosand.fail] run tag @s remove eosand.fail
return 1
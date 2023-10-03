# tick circular motion for people swinging
scoreboard players operation swing_targ_pitch piemel.values = @s piemel.swingprog
scoreboard players operation swing_targ_pitch piemel.values += swing_targ_pitch piemel.values
scoreboard players operation swing_targ_pitch piemel.values += sw_pitch_offset piemel.values
execute store result entity @e[tag=piemel.swingtarget,tag=pr.target,limit=1] Rotation[1] float 1 run scoreboard players get swing_targ_pitch piemel.values

execute at @e[tag=piemel.swingtarget,tag=pr.target] rotated as @e[tag=piemel.swingtarget,tag=pr.target] run tp @s ^ ^ ^37.5
scoreboard players add @s piemel.swingprog 1
execute if score @s piemel.swingprog matches 64.. run function piemel:swing/jump/end
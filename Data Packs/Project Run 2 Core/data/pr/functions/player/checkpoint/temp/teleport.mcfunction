# Send entity to position

data modify storage pr:data tag set value {Pos:[0.0d,0.0d,0.0d],Rotation:[0.0f,0.0f]}
execute store result storage pr:data tag.Pos[0] double 0.001 run scoreboard players get #x pr.value
execute store result storage pr:data tag.Pos[1] double 0.001 run scoreboard players get #y pr.value
execute store result storage pr:data tag.Pos[2] double 0.001 run scoreboard players get #z pr.value
execute store result storage pr:data tag.Rotation[0] float 1 run scoreboard players get #yaw pr.value
data modify entity @s {} merge from storage pr:data tag







# Teleport player

execute at @s run teleport @a[tag=pr.player.target] ~ ~ ~ ~ ~







# Terminate

kill @s
return 1
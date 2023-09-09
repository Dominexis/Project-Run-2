# Teleport to checkpoint

scoreboard players operation #x pr.value = @s pr.temp_checkpoint_x
scoreboard players operation #y pr.value = @s pr.temp_checkpoint_y
scoreboard players operation #z pr.value = @s pr.temp_checkpoint_z
scoreboard players operation #x pr.value *= #1000 pr.value
scoreboard players operation #y pr.value *= #1000 pr.value
scoreboard players operation #z pr.value *= #1000 pr.value
scoreboard players operation #x pr.value += @s pr.temp_checkpoint_sub_x
scoreboard players operation #y pr.value += @s pr.temp_checkpoint_sub_y
scoreboard players operation #z pr.value += @s pr.temp_checkpoint_sub_z
scoreboard players operation #yaw pr.value = @s pr.temp_checkpoint_yaw
tag @s add pr.player.target
execute summon marker run function pr:player/checkpoint/temp/teleport
tag @s remove pr.player.target
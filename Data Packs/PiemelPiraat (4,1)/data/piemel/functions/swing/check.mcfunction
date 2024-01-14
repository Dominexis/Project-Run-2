# checks if player is aiming at a target (only using yaw/pitch because only one target exists, save resources)
execute store result score yaw piemel.values run data get entity @s Rotation[0] 1
execute store result score pitch piemel.values run data get entity @s Rotation[1] 1
execute if score yaw piemel.values matches -92..-88 if score pitch piemel.values matches -25..-21 run function piemel:swing/suggest
return 1
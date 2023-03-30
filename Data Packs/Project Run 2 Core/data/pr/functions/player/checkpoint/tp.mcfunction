# Teleport player to checkpoint

execute if score @s pr.checkpoint_side matches -1 run tp @s ~000 ~2 ~000 -90 0
execute if score @s pr.checkpoint_side matches 00 run tp @s ~043 ~1 ~000 90 0
execute if score @s pr.checkpoint_side matches 01 run tp @s ~-43 ~1 ~000 -90 0
execute if score @s pr.checkpoint_side matches 02 run tp @s ~000 ~1 ~043 180 0
execute if score @s pr.checkpoint_side matches 03 run tp @s ~000 ~1 ~-43 0 0
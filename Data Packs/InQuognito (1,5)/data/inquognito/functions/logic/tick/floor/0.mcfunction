# Checkpoint
execute positioned ~32 ~59 ~-7 if entity @s[dx=2,dy=2,dz=2] positioned ~1 ~ ~1 run function pr:player/checkpoint/mark_pos

# Energy Cell Clearance
execute if score @s inquognito.clearance.energy matches 1.. at @s run function inquognito:logic/clearance/energy

# Bounce Pad
execute positioned ~1 ~57 ~-26 if entity @s[dx=4,dy=0,dz=4] run function inquognito:logic/plot/bounce_pad

# Targets
execute if score @s inquognito.clearance.office.1 matches 1.. run function inquognito:logic/plot/targets/office/1/tick
execute if score @s inquognito.clearance.office.2 matches 1.. run function inquognito:logic/plot/targets/office/2/tick
execute if score @s inquognito.clearance.office.3 matches 1.. run function inquognito:logic/plot/targets/office/3/tick

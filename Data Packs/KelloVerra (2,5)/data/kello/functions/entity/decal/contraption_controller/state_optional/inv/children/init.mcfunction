# Animation

execute if entity @s[tag=aj.decwheel.root] run function animated_java:decwheel/animations/pause_all
execute if score @s kello.decal.state matches 0 run function kello:entity/decal/decwheel/animation/resume_rotate_trn
execute if score @s kello.decal.state matches 2 run function kello:entity/decal/decwheel/animation/resume_rotate_inv
execute if score @s kello.decal.state matches 3 run function kello:entity/decal/decwheel/animation/resume_rotate_trn




# Add tag

tag @s add kello.decal.controller_children
tag @s add kello.decal.controller.optional_contraption
return 1
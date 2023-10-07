# Start anim

execute if entity @s[tag=aj.decwheel.root] run function animated_java:decwheel/animations/pause_all
execute if entity @s[tag=aj.decwheel.root] if score @s kello.decal.state matches 2 run function kello:entity/decal/decwheel/animation/resume_rotate_inv
execute if entity @s[tag=aj.decwheel.root] unless score @s kello.decal.state matches 1..2 run function kello:entity/decal/decwheel/animation/resume_rotate_trn
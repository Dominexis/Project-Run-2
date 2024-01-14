# Animation

execute if entity @s[tag=aj.decwheel.root] run function animated_java:decwheel/animations/pause_all
execute if score @s[tag=aj.decwheel.root] kello.decal.state matches 0 run function kello:entity/decal/decwheel/animation/resume_rotate_trn
execute if score @s[tag=aj.decwheel.root] kello.decal.state matches 3 run function kello:entity/decal/decwheel/animation/resume_rotate_trn
execute if score @s[tag=aj.decwheel.root] kello.decal.state matches 1..2 run function kello:entity/decal/decwheel/animation/stop_rotate

execute if score @s[tag=aj.animwheel.root,tag=kello.entity.type.gear] kello.decal.state matches 2 run function kello:entity/decal/decwheel/variant/anim_static_to_fast
execute if score @s[tag=aj.animwheel.root,tag=kello.entity.type.gear] kello.decal.state matches 0..1 run function kello:entity/decal/decwheel/variant/anim_fast_to_static

execute if score @s[tag=aj.animwheel.root,tag=kello.entity.type.flyfan] kello.decal.state matches 2 run function kello:entity/decal/decwheel/animation/animwheel/resume_rotate
execute if score @s[tag=aj.animwheel.root,tag=kello.entity.type.flyfan] kello.decal.state matches 0..1 run function animated_java:animwheel/animations/pause_all





# Add tag

tag @s add kello.decal.controller_children
tag @s add kello.decal.controller.loading
return 1
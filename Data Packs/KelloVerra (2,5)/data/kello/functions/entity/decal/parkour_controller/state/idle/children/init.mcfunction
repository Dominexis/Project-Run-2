# Animation

# execute if score @s kello.decal.state matches 1 run function kello:entity/decal/decwheel/animation/resume_rotate_trn
# execute if score @s kello.decal.state matches 2 run function kello:entity/decal/decwheel/animation/stop_rotate_trn
scoreboard players set #spawn_persistent kello.value 1

# execute if entity @s[tag=kello.entity.type.cogwheel_shaft,tag=kello.entity.type.small] run function kello:entity/placedicator/small/spawn/main
# execute if entity @s[tag=kello.entity.type.cogwheel_shaft,tag=kello.entity.type.large] run function kello:entity/placedicator/large/spawn/main

execute if entity @s[tag=kello.entity.type.cogwheel,tag=!kello.entity.part.extension] run function kello:entity/decal/parkour_controller/state/idle/children/init_gears
execute if entity @s[tag=kello.entity.type.cogwheel_decshaft,tag=!kello.entity.part.extension] run function kello:entity/decal/parkour_controller/state/idle/children/init_decshaft

scoreboard players set #spawn_persistent kello.value 0
# execute as @e[type=item_display,tag=kello.entity.type.groundicator,distance=..4,sort=nearest,limit=1] run tag @s add kello.groundicator.persistent

# Add tag

tag @s add kello.decal.controller_children
tag @s add kello.decal.controller.parkour
return 1
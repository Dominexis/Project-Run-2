# Tag

tag @s add kello.found_nearest_target




# Clear

function animated_java:decwheel/animations/pause_all
execute unless entity @s[tag=kello.found_nearest_target] unless score @s kello.decal.state matches 1 unless score @s kello.decal.state matches 3 run function animated_java:decwheel/animations/pause_all





# Increase thrown timer

execute if score @s kello.decal.state matches 1 as @e[type=minecraft:item_display,distance=..4,tag=pr.target,tag=!pr.ignore,tag=!kello.exclude,tag=kello.entity.type.thrown_cogwheel,sort=nearest,limit=1] run function kello:entity/decal/contraption_controller/state_optional/run/children/cooldown_reset/main
execute if score @s kello.decal.state matches 3 as @e[type=minecraft:item_display,distance=..4,tag=pr.target,tag=!pr.ignore,tag=!kello.exclude,tag=kello.entity.type.thrown_cogwheel,sort=nearest,limit=1] run function kello:entity/decal/contraption_controller/state_optional/run/children/cooldown_reset/main

execute if score @s kello.decal.state matches 1 run function kello:entity/decal/contraption_controller/state/run/children/sfx/as_shaft
execute if score @s kello.decal.state matches 3 run function kello:entity/decal/contraption_controller/state/run/children/sfx/as_shaft





# Start anim

function kello:entity/decal/decwheel/animation/resume_rotate_run
execute if score @s kello.decal.state matches 1 at @s summon minecraft:marker run function kello:entity/decal/contraption_controller/state/run/children/large_particle_init
execute unless entity @s[tag=kello.found_nearest_target] unless score @s kello.decal.state matches 1 unless score @s kello.decal.state matches 3 run function kello:entity/decal/decwheel/animation/resume_rotate_run
return 1
# Tag

tag @s add kello.found_nearest_target


# Clear

execute run function animated_java:decwheel/animations/pause_all
execute unless entity @s[tag=kello.found_nearest_target] unless score @s kello.decal.state matches 1 unless score @s kello.decal.state matches 3 run function animated_java:decwheel/animations/pause_all





# Increase thrown timer

execute if score @s kello.decal.state matches 1 as @e[type=item_display,tag=pr.target,tag=!pr.ignore,tag=!kello.exclude,tag=kello.entity.type.thrown_cogwheel,distance=..4,sort=nearest,limit=1] run function kello:entity/decal/optional_contraption_controller/state/run/children/cooldown_reset/main
execute if score @s kello.decal.state matches 3 as @e[type=item_display,tag=pr.target,tag=!pr.ignore,tag=!kello.exclude,tag=kello.entity.type.thrown_cogwheel,distance=..4,sort=nearest,limit=1] run function kello:entity/decal/optional_contraption_controller/state/run/children/cooldown_reset/main





# Start anim

execute run function kello:entity/decal/decwheel/animation/resume_rotate_run
execute unless entity @s[tag=kello.found_nearest_target] unless score @s kello.decal.state matches 1 unless score @s kello.decal.state matches 3 run function kello:entity/decal/decwheel/animation/resume_rotate_run
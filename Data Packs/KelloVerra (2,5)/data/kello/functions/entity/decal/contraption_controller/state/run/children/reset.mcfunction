# Increase thrown timer

execute if score @s kello.decal.state matches 1 as @e[type=minecraft:item_display,distance=..8,tag=pr.target,tag=!pr.ignore,tag=!kello.exclude,tag=kello.entity.type.thrown_cogwheel,sort=nearest,limit=1] run function kello:entity/decal/contraption_controller/state/run/children/cooldown_reset/main
execute if score @s kello.decal.state matches 3 as @e[type=minecraft:item_display,distance=..8,tag=pr.target,tag=!pr.ignore,tag=!kello.exclude,tag=kello.entity.type.thrown_cogwheel,sort=nearest,limit=1] run function kello:entity/decal/contraption_controller/state/run/children/cooldown_reset/main


execute if score @s[tag=aj.decwheel.root] kello.decal.state matches 1 run function kello:entity/decal/contraption_controller/state/run/children/sfx/as_shaft
execute if score @s[tag=aj.decwheel.root] kello.decal.state matches 3 run function kello:entity/decal/contraption_controller/state/run/children/sfx/as_shaft





# Start anim
execute if score @s[tag=aj.decwheel.root] kello.decal.state matches 0..2 run function kello:entity/decal/contraption_controller/state/run/children/cog_start
execute if score @s[tag=aj.animwheel.root] kello.decal.state matches 0..2 positioned as @s run function kello:entity/decal/contraption_controller/state/run/children/animwheel_start
execute if entity @s[tag=aj.decwheel.root] run function animated_java:decwheel/animations/pause_all
execute if entity @s[tag=aj.decwheel.root] run function kello:entity/decal/decwheel/animation/resume_rotate_run
return 1
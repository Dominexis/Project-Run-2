# Clear

tag @s remove kello.decal.controller_children



function kello:entity/decal/decwheel/animation/stop_rotate_trn
# function kello:entity/decal/decwheel/animation/stop_rotate_run
function kello:entity/decal/decwheel/animation/stop_rotate_inv


# Increase thrown timer

execute if score @s kello.decal.state matches 1 as @e[type=minecraft:item_display,distance=..4,tag=pr.target,tag=!pr.ignore,tag=kello.entity.type.thrown_cogwheel,sort=nearest,limit=1] run function kello:entity/decal/loading_controller/state/run/children/cooldown_reset/main
return 1
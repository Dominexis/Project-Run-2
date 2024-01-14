execute if score @s kello.decal.state matches 1 run function kello:entity/decal/contraption_controller/state_optional/out/children/detach
execute if score @s kello.decal.state matches 3 run function kello:entity/decal/contraption_controller/state_optional/out/children/detach
function animated_java:decwheel/animations/pause_all


# Tag

tag @s[tag=kello.entity.type.cogwheel_shaft] remove kello.empty
return 1
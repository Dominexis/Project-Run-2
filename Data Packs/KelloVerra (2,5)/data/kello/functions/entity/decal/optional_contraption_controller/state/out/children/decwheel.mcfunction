execute if score @s kello.decal.state matches 1 run function kello:entity/decal/optional_contraption_controller/state/out/children/detach
execute if score @s kello.decal.state matches 3 run function kello:entity/decal/optional_contraption_controller/state/out/children/detach
function animated_java:decwheel/animations/pause_all


# Tag

tag @s[tag=kello.empty] add kello.attach
tag @s[tag=kello.empty] remove kello.empty
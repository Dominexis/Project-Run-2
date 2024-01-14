execute as @e[type=minecraft:item_display,distance=..4,tag=pr.target,tag=kello.entity.type.thrown_cogwheel] run function kello:entity/decal/parkour_controller/state/out/children/detach_select
function kello:entity/decal/parkour_controller/state/idle/children/clear
return 1
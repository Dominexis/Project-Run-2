execute at @s run playsound minecraft:ui.toast.in master @s ~ ~ ~ 5 1.2
execute at @s run particle minecraft:cloud ~ ~ ~ 0.2 0 0.2 0 5 normal @s

scoreboard players set #entity_mot_x pr.value 0
scoreboard players set #entity_mot_z pr.value 0

function pr:player/launch/apply/vector
return 1
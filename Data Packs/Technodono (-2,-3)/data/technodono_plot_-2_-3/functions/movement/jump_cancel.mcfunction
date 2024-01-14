scoreboard players set #entity_mot_x pr.value 0
scoreboard players set #entity_mot_y pr.value 800
scoreboard players set #entity_mot_z pr.value 0
function pr:player/launch/apply/vector
tag @s remove technodono_plot.jump_delay
tag @s remove technodono_plot.double_jump
tag @s remove technodono_plot.single_jump
tag @s remove technodono_plot.jump
kill @e[type=minecraft:boat,tag=technodono_plot.object.boat,sort=nearest,limit=1]
return 1
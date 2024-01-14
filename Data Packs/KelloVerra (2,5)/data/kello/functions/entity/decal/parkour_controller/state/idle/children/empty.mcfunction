scoreboard players remove @s kello.entity.timer 1

tag @s add kello.entity.parkour_controller_empty_in_progress
execute if score @s kello.entity.timer matches ..16 as @e[type=minecraft:item_display,distance=...5,tag=pr.target,tag=!pr.ignore,tag=kello.entity.type.groundicator,sort=nearest,limit=1] run tag @s add kello.dead
execute if score @s kello.entity.timer matches ..0 run function kello:entity/decal/parkour_controller/state/idle/children/emptied


execute if score @s kello.entity.timer matches 19 run function kello:entity/decal/parkour_controller/state/idle/children/empty_prompt


# tag @s remove kello.attached
return 1
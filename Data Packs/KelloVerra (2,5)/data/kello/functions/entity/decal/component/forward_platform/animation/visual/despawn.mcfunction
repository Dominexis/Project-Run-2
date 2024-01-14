
scoreboard players add @s kello.entity.timer 1

# execute if score @s kello.entity.timer matches 1 run say d
# execute if score @s kello.entity.timer matches 2 run say e
# execute if score @s kello.entity.timer matches 3 run say f

execute if score @s kello.entity.timer matches 4 run function kello:entity/decal/component/forward_platform/state/despawn/terminate
return 1
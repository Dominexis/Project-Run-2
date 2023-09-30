
scoreboard players operation #local kello.decal.id = @s kello.decal.id
execute if score @s kello.entity.active_children matches 1.. run function kello:entity/decal/parkour_controller/state/idle/update_children
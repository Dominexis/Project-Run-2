# Init

#execute if entity @s[tag=!kello.decal.controller_children] run function kello:entity/decal/parkour_controller/state/idle/children/init


# Animation

scoreboard players operation #local kello.entity.id = @s kello.entity.id
execute if entity @s[tag=kello.empty,tag=!kello.emptied] run function kello:entity/decal/parkour_controller/state/idle/children/empty
execute if entity @s[tag=kello.attach,tag=kello.recently_attached] run function kello:entity/decal/parkour_controller/state/idle/children/attach_verify
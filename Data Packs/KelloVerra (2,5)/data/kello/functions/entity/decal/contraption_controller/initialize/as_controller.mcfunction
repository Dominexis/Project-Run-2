tag @s add kello.controller.this



# Pointer from controller to decal

execute summon minecraft:snowball run function kello:entity/decal/contraption_controller/initialize/as_pointer_origin



# Pointer from decal to controller

data modify storage kello:data tag.Owner set from entity @s UUID
execute summon minecraft:snowball run function kello:entity/decal/contraption_controller/initialize/as_pointer_controller



tag @s remove kello.controller.this
return 1
tag @s add kello.controller.this



# Pointer from controller to decal

execute summon snowball run function kello:entity/decal/parkour_controller/initialize/as_pointer_origin



# Pointer from decal to controller

data modify storage kello:data tag.Owner set from entity @s UUID
execute summon snowball run function kello:entity/decal/parkour_controller/initialize/as_pointer_controller



tag @s remove kello.controller.this
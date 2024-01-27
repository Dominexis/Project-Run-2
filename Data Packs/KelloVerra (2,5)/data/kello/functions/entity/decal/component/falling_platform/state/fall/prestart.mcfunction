# Set variant

function animated_java:falling_platform/apply_variant/default
execute if score @s kello.entity.variant matches 0 on passengers if entity @s[tag=aj.falling_platform.bone.root] run data modify entity @s item.tag.CustomModelData set value 66
execute if score @s kello.entity.variant matches 1 on passengers if entity @s[tag=aj.falling_platform.bone.root] run data modify entity @s item.tag.CustomModelData set value 68
execute if score @s kello.entity.variant matches 2 on passengers if entity @s[tag=aj.falling_platform.bone.root] run data modify entity @s item.tag.CustomModelData set value 169
execute if score @s kello.entity.variant matches 3 on passengers if entity @s[tag=aj.falling_platform.bone.root] run data modify entity @s item.tag.CustomModelData set value 170
return 1
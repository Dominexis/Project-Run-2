# Modify Variants
# Too lazy to make search tree

function animated_java:decwheel/apply_variant/default


execute if entity @s[tag=kello.entity.type.small,tag=kello.entity.type.cogwheel_shaft] run function animated_java:decwheel/apply_variant/small_fixed
execute if entity @s[tag=kello.entity.type.large,tag=kello.entity.type.cogwheel_shaft] run function animated_java:decwheel/apply_variant/large_fixed

#execute if entity @s[tag=kello.entity.type.small,tag=kello.entity.type.cogwheel] run function animated_java:decwheel/apply_variant/small_gear
#execute if entity @s[tag=kello.entity.type.large,tag=kello.entity.type.cogwheel] run function animated_java:decwheel/apply_variant/large_gear
return 1
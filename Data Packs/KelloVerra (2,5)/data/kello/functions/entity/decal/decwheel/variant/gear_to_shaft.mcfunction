# Modify Variants
# Too lazy to make search tree

function animated_java:decwheel/apply_variant/default



#execute if entity @s[tag=kello.entity.type.small,tag=kello.entity.type.cogwheel] run function animated_java:decwheel/apply_variant/small_shaft
#execute if entity @s[tag=kello.entity.type.large,tag=kello.entity.type.cogwheel] run function animated_java:decwheel/apply_variant/large_shaft

execute if entity @s[tag=kello.entity.type.small,tag=kello.entity.type.cogwheel_shaft] run function animated_java:decwheel/apply_variant/small
execute if entity @s[tag=kello.entity.type.large,tag=kello.entity.type.cogwheel_shaft] run function animated_java:decwheel/apply_variant/large
return 1
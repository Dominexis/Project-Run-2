# States
# 0 -> stop rotates when no active, rotates when active
# 1 -> stop rotates when no active, rotates when pre active, stop rotates when active
# 2 -> rotates when no active, stop rotates when active

execute if entity @s[tag=kello.entity.type.gear] if score @s kello.decal.state matches 1 run function kello:entity/decal/decwheel/variant/anim_fast_to_static
execute if entity @s[tag=kello.entity.type.flyfan] if score @s kello.decal.state matches 1 run function animated_java:animwheel/animations/pause_all

tag @s add kello.entity.has_animwheel_spinning
return 1
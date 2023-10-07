data merge entity @s {width:4,height:4}
# data merge entity @s {brightness:{sky:2,block:2}}
data modify entity @s item.tag.display.color set value 2106383

execute on passengers run function kello:entity/decal/static/flyfan/as_passengers
tp @s ~ ~ ~ ~ ~


execute if score #variant kello.value matches 0 run function animated_java:animwheel/apply_variant/flyfan
execute if score #variant kello.value matches 1 run function animated_java:animwheel/apply_variant/diflyfan
execute if score #variant kello.value matches 2 run function animated_java:animwheel/apply_variant/flyfan1
execute if score #variant kello.value matches 3 run function animated_java:animwheel/apply_variant/diflyfan1
execute if score #variant kello.value matches 4 run function animated_java:animwheel/apply_variant/flyfan2
execute if score #variant kello.value matches 5 run function animated_java:animwheel/apply_variant/diflyfan2


function kello:debug/decal/util/spawn/verify/decals/initialize
tag @s remove kello.entity.target.new





execute if score #rot_mode kello.value matches 0 if score #rot_speed kello.value matches 0 run function animated_java:animwheel/animations/minor_cw/play
execute if score #rot_mode kello.value matches 0 if score #rot_speed kello.value matches 1 run function animated_java:animwheel/animations/minor_cw_f/play

execute if score #rot_mode kello.value matches 1 if score #rot_speed kello.value matches 0 run function animated_java:animwheel/animations/minor_ccw/play
execute if score #rot_mode kello.value matches 1 if score #rot_speed kello.value matches 1 run function animated_java:animwheel/animations/minor_ccw_f/play
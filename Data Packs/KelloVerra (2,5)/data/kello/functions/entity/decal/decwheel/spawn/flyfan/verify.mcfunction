execute if score #variant kello.value matches 0 run function animated_java:animwheel/summon/flyfan
execute if score #variant kello.value matches 1 run function animated_java:animwheel/summon/diflyfan
execute if score #variant kello.value matches 2 run function animated_java:animwheel/summon/flyfan1
execute if score #variant kello.value matches 3 run function animated_java:animwheel/summon/diflyfan1
execute if score #variant kello.value matches 4 run function animated_java:animwheel/summon/flyfan2
execute if score #variant kello.value matches 5 run function animated_java:animwheel/summon/diflyfan2
# execute if score #variant kello.value matches 6 run function animated_java:animwheel/summon/gear_6_static
# execute if score #variant kello.value matches 7 run function animated_java:animwheel/summon/gear_7_static
# execute if score #variant kello.value matches 8 run function animated_java:animwheel/summon/gear_8_static

execute if score #variant kello.value matches 0..8 as @e[type=item_display,tag=kello.entity.target.new] run function kello:entity/decal/decwheel/spawn/flyfan/init
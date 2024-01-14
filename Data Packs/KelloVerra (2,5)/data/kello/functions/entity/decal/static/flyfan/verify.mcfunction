function animated_java:animwheel/summon

execute as @e[type=minecraft:item_display,tag=kello.entity.target.new] positioned ^ ^-.5 ^-.45 run function kello:entity/decal/static/flyfan/common_init
return 1
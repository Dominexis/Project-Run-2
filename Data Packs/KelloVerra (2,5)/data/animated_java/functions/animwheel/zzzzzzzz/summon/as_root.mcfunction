execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.animwheel.rig_loaded 1
scoreboard players operation @s aj.animwheel.export_version = aj.animwheel.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:animwheel/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.animwheel.variant.default aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.animwheel.variant.diflyfan aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/diflyfan/as_root
execute if score #variant aj.i = $aj.animwheel.variant.diflyfan1 aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/diflyfan1/as_root
execute if score #variant aj.i = $aj.animwheel.variant.diflyfan2 aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/diflyfan2/as_root
execute if score #variant aj.i = $aj.animwheel.variant.flyfan aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/flyfan/as_root
execute if score #variant aj.i = $aj.animwheel.variant.flyfan1 aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/flyfan1/as_root
execute if score #variant aj.i = $aj.animwheel.variant.flyfan2 aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/flyfan2/as_root
execute if score #variant aj.i = $aj.animwheel.variant.gear_0_fast aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/gear_0_fast/as_root
execute if score #variant aj.i = $aj.animwheel.variant.gear_0_static aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/gear_0_static/as_root
execute if score #variant aj.i = $aj.animwheel.variant.gear_1_fast aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/gear_1_fast/as_root
execute if score #variant aj.i = $aj.animwheel.variant.gear_1_static aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/gear_1_static/as_root
execute if score #variant aj.i = $aj.animwheel.variant.gear_2_fast aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/gear_2_fast/as_root
execute if score #variant aj.i = $aj.animwheel.variant.gear_2_static aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/gear_2_static/as_root
execute if score #variant aj.i = $aj.animwheel.variant.gear_3_fast aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/gear_3_fast/as_root
execute if score #variant aj.i = $aj.animwheel.variant.gear_3_static aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/gear_3_static/as_root
execute if score #variant aj.i = $aj.animwheel.variant.gear_4_fast aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/gear_4_fast/as_root
execute if score #variant aj.i = $aj.animwheel.variant.gear_4_static aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/gear_4_static/as_root
execute if score #variant aj.i = $aj.animwheel.variant.gear_5_fast aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/gear_5_fast/as_root
execute if score #variant aj.i = $aj.animwheel.variant.gear_5_static aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/gear_5_static/as_root
execute if score #variant aj.i = $aj.animwheel.variant.gear_6_fast aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/gear_6_fast/as_root
execute if score #variant aj.i = $aj.animwheel.variant.gear_6_static aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/gear_6_static/as_root
execute if score #variant aj.i = $aj.animwheel.variant.gear_7_fast aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/gear_7_fast/as_root
execute if score #variant aj.i = $aj.animwheel.variant.gear_7_static aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/gear_7_static/as_root
execute if score #variant aj.i = $aj.animwheel.variant.gear_8_fast aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/gear_8_fast/as_root
execute if score #variant aj.i = $aj.animwheel.variant.gear_8_static aj.id run function animated_java:animwheel/zzzzzzzz/apply_variant/gear_8_static/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.animwheel.animation.minor_cw aj.id run function animated_java:animwheel/zzzzzzzz/animations/minor_cw/apply_frame_as_root
execute if score #animation aj.i = $aj.animwheel.animation.minor_cw aj.id run scoreboard players operation @s aj.animwheel.animation.minor_cw.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.animwheel.animation.minor_ccw aj.id run function animated_java:animwheel/zzzzzzzz/animations/minor_ccw/apply_frame_as_root
execute if score #animation aj.i = $aj.animwheel.animation.minor_ccw aj.id run scoreboard players operation @s aj.animwheel.animation.minor_ccw.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.animwheel.animation.minor_cw_f aj.id run function animated_java:animwheel/zzzzzzzz/animations/minor_cw_f/apply_frame_as_root
execute if score #animation aj.i = $aj.animwheel.animation.minor_cw_f aj.id run scoreboard players operation @s aj.animwheel.animation.minor_cw_f.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.animwheel.animation.minor_ccw_f aj.id run function animated_java:animwheel/zzzzzzzz/animations/minor_ccw_f/apply_frame_as_root
execute if score #animation aj.i = $aj.animwheel.animation.minor_ccw_f aj.id run scoreboard players operation @s aj.animwheel.animation.minor_ccw_f.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.animwheel.animation.flip aj.id run function animated_java:animwheel/zzzzzzzz/animations/flip/apply_frame_as_root
execute if score #animation aj.i = $aj.animwheel.animation.flip aj.id run scoreboard players operation @s aj.animwheel.animation.flip.local_anim_time = #frame aj.i
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i
return 1
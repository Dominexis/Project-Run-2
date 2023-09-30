execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.decwheel.rig_loaded 1
scoreboard players operation @s aj.decwheel.export_version = aj.decwheel.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:decwheel/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.decwheel.variant.default aj.id run function animated_java:decwheel/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.decwheel.variant.air aj.id run function animated_java:decwheel/zzzzzzzz/apply_variant/air/as_root
execute if score #variant aj.i = $aj.decwheel.variant.large aj.id run function animated_java:decwheel/zzzzzzzz/apply_variant/large/as_root
execute if score #variant aj.i = $aj.decwheel.variant.large_fixed aj.id run function animated_java:decwheel/zzzzzzzz/apply_variant/large_fixed/as_root
execute if score #variant aj.i = $aj.decwheel.variant.large_gear aj.id run function animated_java:decwheel/zzzzzzzz/apply_variant/large_gear/as_root
execute if score #variant aj.i = $aj.decwheel.variant.large_shaft aj.id run function animated_java:decwheel/zzzzzzzz/apply_variant/large_shaft/as_root
execute if score #variant aj.i = $aj.decwheel.variant.large1 aj.id run function animated_java:decwheel/zzzzzzzz/apply_variant/large1/as_root
execute if score #variant aj.i = $aj.decwheel.variant.small aj.id run function animated_java:decwheel/zzzzzzzz/apply_variant/small/as_root
execute if score #variant aj.i = $aj.decwheel.variant.small_fixed aj.id run function animated_java:decwheel/zzzzzzzz/apply_variant/small_fixed/as_root
execute if score #variant aj.i = $aj.decwheel.variant.small_gear aj.id run function animated_java:decwheel/zzzzzzzz/apply_variant/small_gear/as_root
execute if score #variant aj.i = $aj.decwheel.variant.small_shaft aj.id run function animated_java:decwheel/zzzzzzzz/apply_variant/small_shaft/as_root
execute if score #variant aj.i = $aj.decwheel.variant.small1 aj.id run function animated_java:decwheel/zzzzzzzz/apply_variant/small1/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.decwheel.animation.clockwise_small aj.id run function animated_java:decwheel/zzzzzzzz/animations/clockwise_small/apply_frame_as_root
execute if score #animation aj.i = $aj.decwheel.animation.clockwise_small aj.id run scoreboard players operation @s aj.decwheel.animation.clockwise_small.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.decwheel.animation.counter_clockwise_small aj.id run function animated_java:decwheel/zzzzzzzz/animations/counter_clockwise_small/apply_frame_as_root
execute if score #animation aj.i = $aj.decwheel.animation.counter_clockwise_small aj.id run scoreboard players operation @s aj.decwheel.animation.counter_clockwise_small.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.decwheel.animation.clockwise_large aj.id run function animated_java:decwheel/zzzzzzzz/animations/clockwise_large/apply_frame_as_root
execute if score #animation aj.i = $aj.decwheel.animation.clockwise_large aj.id run scoreboard players operation @s aj.decwheel.animation.clockwise_large.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.decwheel.animation.counter_clockwise_large aj.id run function animated_java:decwheel/zzzzzzzz/animations/counter_clockwise_large/apply_frame_as_root
execute if score #animation aj.i = $aj.decwheel.animation.counter_clockwise_large aj.id run scoreboard players operation @s aj.decwheel.animation.counter_clockwise_large.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.decwheel.animation.counter_clockwise_small_run aj.id run function animated_java:decwheel/zzzzzzzz/animations/counter_clockwise_small_run/apply_frame_as_root
execute if score #animation aj.i = $aj.decwheel.animation.counter_clockwise_small_run aj.id run scoreboard players operation @s aj.decwheel.animation.counter_clockwise_small_run.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.decwheel.animation.clockwise_small_run aj.id run function animated_java:decwheel/zzzzzzzz/animations/clockwise_small_run/apply_frame_as_root
execute if score #animation aj.i = $aj.decwheel.animation.clockwise_small_run aj.id run scoreboard players operation @s aj.decwheel.animation.clockwise_small_run.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.decwheel.animation.counter_clockwise_large_run aj.id run function animated_java:decwheel/zzzzzzzz/animations/counter_clockwise_large_run/apply_frame_as_root
execute if score #animation aj.i = $aj.decwheel.animation.counter_clockwise_large_run aj.id run scoreboard players operation @s aj.decwheel.animation.counter_clockwise_large_run.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.decwheel.animation.clockwise_large_run aj.id run function animated_java:decwheel/zzzzzzzz/animations/clockwise_large_run/apply_frame_as_root
execute if score #animation aj.i = $aj.decwheel.animation.clockwise_large_run aj.id run scoreboard players operation @s aj.decwheel.animation.clockwise_large_run.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.decwheel.animation.counter_clockwise_small_inv aj.id run function animated_java:decwheel/zzzzzzzz/animations/counter_clockwise_small_inv/apply_frame_as_root
execute if score #animation aj.i = $aj.decwheel.animation.counter_clockwise_small_inv aj.id run scoreboard players operation @s aj.decwheel.animation.counter_clockwise_small_inv.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.decwheel.animation.clockwise_small_inv aj.id run function animated_java:decwheel/zzzzzzzz/animations/clockwise_small_inv/apply_frame_as_root
execute if score #animation aj.i = $aj.decwheel.animation.clockwise_small_inv aj.id run scoreboard players operation @s aj.decwheel.animation.clockwise_small_inv.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.decwheel.animation.counter_clockwise_large_inv aj.id run function animated_java:decwheel/zzzzzzzz/animations/counter_clockwise_large_inv/apply_frame_as_root
execute if score #animation aj.i = $aj.decwheel.animation.counter_clockwise_large_inv aj.id run scoreboard players operation @s aj.decwheel.animation.counter_clockwise_large_inv.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.decwheel.animation.clockwise_large_inv aj.id run function animated_java:decwheel/zzzzzzzz/animations/clockwise_large_inv/apply_frame_as_root
execute if score #animation aj.i = $aj.decwheel.animation.clockwise_large_inv aj.id run scoreboard players operation @s aj.decwheel.animation.clockwise_large_inv.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.decwheel.animation.clockwise_small_trn aj.id run function animated_java:decwheel/zzzzzzzz/animations/clockwise_small_trn/apply_frame_as_root
execute if score #animation aj.i = $aj.decwheel.animation.clockwise_small_trn aj.id run scoreboard players operation @s aj.decwheel.animation.clockwise_small_trn.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.decwheel.animation.counter_clockwise_small_trn aj.id run function animated_java:decwheel/zzzzzzzz/animations/counter_clockwise_small_trn/apply_frame_as_root
execute if score #animation aj.i = $aj.decwheel.animation.counter_clockwise_small_trn aj.id run scoreboard players operation @s aj.decwheel.animation.counter_clockwise_small_trn.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.decwheel.animation.clockwise_large_trn aj.id run function animated_java:decwheel/zzzzzzzz/animations/clockwise_large_trn/apply_frame_as_root
execute if score #animation aj.i = $aj.decwheel.animation.clockwise_large_trn aj.id run scoreboard players operation @s aj.decwheel.animation.clockwise_large_trn.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.decwheel.animation.counter_clockwise_large_trn aj.id run function animated_java:decwheel/zzzzzzzz/animations/counter_clockwise_large_trn/apply_frame_as_root
execute if score #animation aj.i = $aj.decwheel.animation.counter_clockwise_large_trn aj.id run scoreboard players operation @s aj.decwheel.animation.counter_clockwise_large_trn.local_anim_time = #frame aj.i
execute at @s run function #animated_java:decwheel/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i
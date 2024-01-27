execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.cogwheel.rig_loaded 1
scoreboard players operation @s aj.cogwheel.export_version = aj.cogwheel.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:cogwheel/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.cogwheel.variant.default aj.id run function animated_java:cogwheel/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.cogwheel.variant.air aj.id run function animated_java:cogwheel/zzzzzzzz/apply_variant/air/as_root
execute if score #variant aj.i = $aj.cogwheel.variant.large aj.id run function animated_java:cogwheel/zzzzzzzz/apply_variant/large/as_root
execute if score #variant aj.i = $aj.cogwheel.variant.small aj.id run function animated_java:cogwheel/zzzzzzzz/apply_variant/small/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.cogwheel.animation.small aj.id run function animated_java:cogwheel/zzzzzzzz/animations/small/apply_frame_as_root
execute if score #animation aj.i = $aj.cogwheel.animation.small aj.id run scoreboard players operation @s aj.cogwheel.animation.small.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.cogwheel.animation.large aj.id run function animated_java:cogwheel/zzzzzzzz/animations/large/apply_frame_as_root
execute if score #animation aj.i = $aj.cogwheel.animation.large aj.id run scoreboard players operation @s aj.cogwheel.animation.large.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.cogwheel.animation.large_ground aj.id run function animated_java:cogwheel/zzzzzzzz/animations/large_ground/apply_frame_as_root
execute if score #animation aj.i = $aj.cogwheel.animation.large_ground aj.id run scoreboard players operation @s aj.cogwheel.animation.large_ground.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.cogwheel.animation.small_ground aj.id run function animated_java:cogwheel/zzzzzzzz/animations/small_ground/apply_frame_as_root
execute if score #animation aj.i = $aj.cogwheel.animation.small_ground aj.id run scoreboard players operation @s aj.cogwheel.animation.small_ground.local_anim_time = #frame aj.i
execute at @s run function #animated_java:cogwheel/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i
return 1
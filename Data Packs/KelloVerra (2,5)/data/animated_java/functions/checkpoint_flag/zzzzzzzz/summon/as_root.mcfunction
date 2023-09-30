execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.checkpoint_flag.rig_loaded 1
scoreboard players operation @s aj.checkpoint_flag.export_version = aj.checkpoint_flag.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:checkpoint_flag/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.checkpoint_flag.variant.default aj.id run function animated_java:checkpoint_flag/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.checkpoint_flag.variant.atramentum aj.id run function animated_java:checkpoint_flag/zzzzzzzz/apply_variant/atramentum/as_root
execute if score #variant aj.i = $aj.checkpoint_flag.variant.forestglide aj.id run function animated_java:checkpoint_flag/zzzzzzzz/apply_variant/forestglide/as_root
execute if score #variant aj.i = $aj.checkpoint_flag.variant.nebulae aj.id run function animated_java:checkpoint_flag/zzzzzzzz/apply_variant/nebulae/as_root
execute if score #variant aj.i = $aj.checkpoint_flag.variant.sundown aj.id run function animated_java:checkpoint_flag/zzzzzzzz/apply_variant/sundown/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.checkpoint_flag.animation.idle aj.id run function animated_java:checkpoint_flag/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score #animation aj.i = $aj.checkpoint_flag.animation.idle aj.id run scoreboard players operation @s aj.checkpoint_flag.animation.idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.checkpoint_flag.animation.flap aj.id run function animated_java:checkpoint_flag/zzzzzzzz/animations/flap/apply_frame_as_root
execute if score #animation aj.i = $aj.checkpoint_flag.animation.flap aj.id run scoreboard players operation @s aj.checkpoint_flag.animation.flap.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.checkpoint_flag.animation.checkpoint aj.id run function animated_java:checkpoint_flag/zzzzzzzz/animations/checkpoint/apply_frame_as_root
execute if score #animation aj.i = $aj.checkpoint_flag.animation.checkpoint aj.id run scoreboard players operation @s aj.checkpoint_flag.animation.checkpoint.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.checkpoint_flag.animation.curl aj.id run function animated_java:checkpoint_flag/zzzzzzzz/animations/curl/apply_frame_as_root
execute if score #animation aj.i = $aj.checkpoint_flag.animation.curl aj.id run scoreboard players operation @s aj.checkpoint_flag.animation.curl.local_anim_time = #frame aj.i
execute at @s run function #animated_java:checkpoint_flag/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i
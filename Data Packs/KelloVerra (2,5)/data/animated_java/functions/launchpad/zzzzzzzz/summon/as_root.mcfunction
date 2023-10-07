execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.launchpad.rig_loaded 1
scoreboard players operation @s aj.launchpad.export_version = aj.launchpad.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:launchpad/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.launchpad.variant.default aj.id run function animated_java:launchpad/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.launchpad.variant.blossom aj.id run function animated_java:launchpad/zzzzzzzz/apply_variant/blossom/as_root
execute if score #variant aj.i = $aj.launchpad.variant.blossom_curl aj.id run function animated_java:launchpad/zzzzzzzz/apply_variant/blossom_curl/as_root
execute if score #variant aj.i = $aj.launchpad.variant.budded aj.id run function animated_java:launchpad/zzzzzzzz/apply_variant/budded/as_root
execute if score #variant aj.i = $aj.launchpad.variant.budded_curl aj.id run function animated_java:launchpad/zzzzzzzz/apply_variant/budded_curl/as_root
execute if score #variant aj.i = $aj.launchpad.variant.low_lod aj.id run function animated_java:launchpad/zzzzzzzz/apply_variant/low_lod/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.launchpad.animation.bloom aj.id run function animated_java:launchpad/zzzzzzzz/animations/bloom/apply_frame_as_root
execute if score #animation aj.i = $aj.launchpad.animation.bloom aj.id run scoreboard players operation @s aj.launchpad.animation.bloom.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.launchpad.animation.bud aj.id run function animated_java:launchpad/zzzzzzzz/animations/bud/apply_frame_as_root
execute if score #animation aj.i = $aj.launchpad.animation.bud aj.id run scoreboard players operation @s aj.launchpad.animation.bud.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.launchpad.animation.shoot aj.id run function animated_java:launchpad/zzzzzzzz/animations/shoot/apply_frame_as_root
execute if score #animation aj.i = $aj.launchpad.animation.shoot aj.id run scoreboard players operation @s aj.launchpad.animation.shoot.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.launchpad.animation.cancel aj.id run function animated_java:launchpad/zzzzzzzz/animations/cancel/apply_frame_as_root
execute if score #animation aj.i = $aj.launchpad.animation.cancel aj.id run scoreboard players operation @s aj.launchpad.animation.cancel.local_anim_time = #frame aj.i
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i
execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.comet_flake.rig_loaded 1
scoreboard players operation @s aj.comet_flake.export_version = aj.comet_flake.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:comet_flake/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.comet_flake.variant.default aj.id run function animated_java:comet_flake/zzzzzzzz/apply_variant/default/as_root
execute if score #variant aj.i = $aj.comet_flake.variant.large aj.id run function animated_java:comet_flake/zzzzzzzz/apply_variant/large/as_root
execute if score #variant aj.i = $aj.comet_flake.variant.medium aj.id run function animated_java:comet_flake/zzzzzzzz/apply_variant/medium/as_root
execute if score #variant aj.i = $aj.comet_flake.variant.small aj.id run function animated_java:comet_flake/zzzzzzzz/apply_variant/small/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute at @s run function #animated_java:comet_flake/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i
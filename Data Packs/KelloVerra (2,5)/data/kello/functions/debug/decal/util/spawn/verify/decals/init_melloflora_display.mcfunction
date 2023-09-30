function animated_java:melloflora_display/summon
execute positioned ~ ~2.5 ~ run function animated_java:cogwheel/summon/large

execute as @e[type=item_display,tag=kello.decal.type.melloflora_cogwheel_display] on passengers positioned as @s run function kello:debug/decal/util/spawn/verify/decals/init_melloflora_display_children
execute positioned ~ ~2.5 ~ as @e[type=item_display,tag=aj.cogwheel.root,distance=..2,sort=nearest] on passengers positioned as @s run function kello:debug/decal/util/spawn/verify/decals/init_melloflora_display_children
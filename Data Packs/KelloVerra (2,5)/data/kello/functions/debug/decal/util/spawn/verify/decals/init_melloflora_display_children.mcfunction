execute if entity @s[tag=kello.decal.type.melloflora_cogwheel_display] on passengers run data merge entity @s {width:1.45f,height:1f}
execute if entity @s[tag=kello.decal.type.melloflora_cogwheel_display] on passengers run data merge entity @s {brightness:{sky:15,block:12}}




execute if entity @s[tag=aj.cogwheel.bone] on passengers run data merge entity @s {width:1.125f,height:1.125f}
execute if entity @s[tag=aj.cogwheel.bone] on vehicle run function animated_java:cogwheel/animations/large_ground/play
execute if entity @s[tag=aj.cogwheel.bone] on vehicle run data modify entity @s Tags set value ["aj.rig_root","aj.cogwheel.rig_entity","aj.cogwheel.animation.large_ground","aj.cogwheel.root","kello.decal","kello.decal.type.large_cogwheel_ground"]
execute if entity @s[tag=aj.cogwheel.bone.large_cog] run data merge entity @s {Tags:["aj.cogwheel.bone","kello.exclude","aj.cogwheel.rig_entity","aj.cogwheel.bone.large_cog","pr.ignore"],billboard:"vertical"}
execute if entity @s[tag=aj.cogwheel.bone.small_cog] run kill @s




data modify entity @s item.tag.display.color set value 2106383
tag @s add kello.decal
tp @s ~ ~ ~ ~ 0



function kello:debug/decal/util/spawn/verify/decals/initialize
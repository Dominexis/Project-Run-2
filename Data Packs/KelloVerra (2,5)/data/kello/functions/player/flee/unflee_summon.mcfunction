data merge entity @s {Tags:["kello.entity","kello.entity.type.unflee_marker","kello.exclude"]}
scoreboard players operation @s kello.player.id = #local kello.player.id
tag @s add kello.entity.local_target
tp @s ~ ~1.25 ~ ~ ~
tag @s remove kello.entity.local_target
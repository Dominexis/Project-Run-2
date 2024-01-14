item replace entity @s container.0 with minecraft:magenta_stained_glass_pane{CustomModelData:351955}
data merge entity @s {brightness:{block:8,sky:10}}
tag @s remove kello.entity.ticking
tag @s add kello.exclude
scoreboard players set @s kello.entity.lifetime 1
return 1
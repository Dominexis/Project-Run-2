#tag @s remove kello.empty
#tag @s add kello.attach
scoreboard players add @s kello.entity.quantity 1
#scoreboard players operation #local kello.decal.id = @s kello.decal.id
tp @e[type=item_display,tag=pr.target,tag=kello.launcher.target,distance=..4] @s
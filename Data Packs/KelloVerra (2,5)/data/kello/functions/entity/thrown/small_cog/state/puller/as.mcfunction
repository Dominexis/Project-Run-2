#tag @s remove kello.empty
#tag @s add kello.attach
scoreboard players add @s kello.entity.quantity 1
execute as @e[type=minecraft:item_display,distance=..8,tag=pr.target,tag=kello.puller.target,limit=1] run function kello:entity/thrown/small_cog/state/puller/as_cog
tag @s add kello.entity.destination_pos
execute as @a[tag=pr.target] if score @s kello.player.id = #local kello.player.id run function kello:entity/thrown/small_cog/state/puller/as_player
scoreboard players operation #local kello.decal.id = @s kello.decal.id
return 1
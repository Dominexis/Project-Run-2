# Detach

tag @s add kello.puller.target
execute as @e[type=minecraft:item_display,distance=..6,tag=pr.target,tag=!pr.ignore,tag=aj.escapement.root,scores={kello.entity.quantity=1..},sort=nearest,limit=1] run function kello:entity/thrown/small_cog/state/puller/as_detach
tag @s remove kello.puller.target

execute positioned ~ ~-1 ~ if entity @a[distance=..2,tag=pr.target,tag=kello.entity.player.target] positioned ~ ~1 ~ run function kello:entity/thrown/small_cog/state/pickup/start
return 1
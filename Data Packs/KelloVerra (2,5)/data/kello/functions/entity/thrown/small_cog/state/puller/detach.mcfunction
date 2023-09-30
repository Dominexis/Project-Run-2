# Detach

tag @s add kello.puller.target
execute as @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=aj.escapement.root,scores={kello.entity.quantity=1..},distance=..6,sort=nearest,limit=1] run function kello:entity/thrown/small_cog/state/puller/as_detach
tag @s remove kello.puller.target

execute positioned ~ ~-1 ~ if entity @a[tag=pr.target,tag=kello.entity.player.target,distance=..2] positioned ~ ~1 ~ run function kello:entity/thrown/small_cog/state/pickup/start
# Detach

tag @s add kello.launcher.target
execute as @e[type=minecraft:item_display,distance=..6,tag=pr.target,tag=!pr.ignore,tag=kello.entity.type.launchpad,tag=kello.entity.part.launchpad,scores={kello.entity.quantity=1..},sort=nearest,limit=1] run function kello:entity/thrown/large_cog/state/launcher/as_detach
tag @s remove kello.launcher.target
return 1
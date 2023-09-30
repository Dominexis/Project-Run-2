# Detach

tag @s add kello.launcher.target
execute as @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=kello.entity.type.launchpad,tag=kello.entity.part.launchpad,scores={kello.entity.quantity=1..},distance=..6,sort=nearest,limit=1] run function kello:entity/thrown/large_cog/state/launcher/as_detach
tag @s remove kello.launcher.target
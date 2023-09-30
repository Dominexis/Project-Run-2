# Terminate

tag @s add aj.terminate
kill @e[type=marker,tag=kello.entity.aim]




# Detach from any attachables

tag @s add kello.fixed.target
execute as @e[type=item_display,tag=!kello.ignore,tag=kello.entity.type.cogwheel_shaft,tag=kello.entity.type.large,tag=kello.attach,distance=..18,sort=nearest,limit=1] at @s run function kello:entity/thrown/large_cog/state/fixed/as_detach
tag @s remove kello.fixed.target

tag @s add kello.launcher.target
execute as @e[type=item_display,tag=!kello.ignore,tag=kello.entity.type.launchpad,tag=kello.entity.part.launchpad,scores={kello.entity.quantity=1..},distance=..6,sort=nearest,limit=1] run function kello:entity/thrown/large_cog/state/launcher/as_cancel_detach
tag @s remove kello.launcher.target
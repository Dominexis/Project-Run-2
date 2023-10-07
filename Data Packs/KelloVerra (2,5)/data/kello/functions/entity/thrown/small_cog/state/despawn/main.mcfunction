# Terminate

tag @s add aj.terminate
kill @e[type=marker,tag=kello.entity.aim]




# Detach from any attachables

tag @s add kello.fixed.target
execute as @e[type=item_display,tag=!pr.ignore,tag=kello.entity.type.cogwheel_shaft,tag=kello.entity.type.small,tag=kello.attach,distance=..12,sort=nearest,limit=1] at @s run function kello:entity/thrown/small_cog/state/fixed/as_detach
tag @s remove kello.fixed.target

tag @s add kello.puller.target
execute as @e[type=item_display,tag=!pr.ignore,tag=aj.escapement.root,scores={kello.entity.quantity=1..},distance=..6,sort=nearest,limit=1] run function kello:entity/thrown/small_cog/state/puller/as_detach
tag @s remove kello.puller.target
# Terminate

tag @s add aj.terminate
kill @e[type=minecraft:marker,tag=kello.entity.aim]




# Detach from any attachables

tag @s add kello.fixed.target
execute as @e[type=minecraft:item_display,distance=..12,tag=!pr.ignore,tag=kello.entity.type.cogwheel_shaft,tag=kello.entity.type.small,tag=kello.attach,sort=nearest,limit=1] at @s run function kello:entity/thrown/small_cog/state/fixed/as_detach
tag @s remove kello.fixed.target

tag @s add kello.puller.target
execute as @e[type=minecraft:item_display,distance=..6,tag=!pr.ignore,tag=aj.escapement.root,scores={kello.entity.quantity=1..},sort=nearest,limit=1] run function kello:entity/thrown/small_cog/state/puller/as_detach
tag @s remove kello.puller.target
return 1
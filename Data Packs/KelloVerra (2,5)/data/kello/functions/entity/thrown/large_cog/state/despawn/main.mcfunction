# Terminate

tag @s add aj.terminate
kill @e[type=minecraft:marker,tag=kello.entity.aim]




# Detach from any attachables

tag @s add kello.fixed.target
execute as @e[type=minecraft:item_display,distance=..18,tag=!pr.ignore,tag=kello.entity.type.cogwheel_shaft,tag=kello.entity.type.large,tag=kello.attach,sort=nearest,limit=1] at @s run function kello:entity/thrown/large_cog/state/fixed/as_detach
tag @s remove kello.fixed.target

tag @s add kello.launcher.target
execute as @e[type=minecraft:item_display,distance=..6,tag=!pr.ignore,tag=kello.entity.type.launchpad,tag=kello.entity.part.launchpad,scores={kello.entity.quantity=1..},sort=nearest,limit=1] run function kello:entity/thrown/large_cog/state/launcher/as_cancel_detach
tag @s remove kello.launcher.target
return 1
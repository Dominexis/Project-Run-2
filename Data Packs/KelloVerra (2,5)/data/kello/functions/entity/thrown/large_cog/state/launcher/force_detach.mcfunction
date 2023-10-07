# Detach

tag @s add kello.launcher.target
execute as @e[type=item_display,tag=pr.target,tag=!pr.ignore,tag=kello.entity.type.launchpad,tag=kello.entity.part.launchpad,scores={kello.entity.quantity=1..},distance=..8,sort=nearest,limit=1] run function kello:entity/thrown/large_cog/state/launcher/as_cancel_detach
tag @s remove kello.launcher.target

# function kello:entity/thrown/large_cog/state/recoil/force_start
# tag @s add kello.state.force_recoil
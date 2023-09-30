# Animation

execute if score @s kello.decal.state matches 0 run function kello:entity/decal/decwheel/animation/stop_rotate_trn
execute if score @s kello.decal.state matches 3 run function kello:entity/decal/decwheel/animation/stop_rotate_trn
execute if score @s kello.decal.state matches 1..2 run function kello:entity/decal/decwheel/animation/stop_rotate




# Detach

execute if entity @s[tag=kello.attach] run function kello:entity/decal/parkour_controller/state/out/children/detach




# Add tag

tag @s add kello.decal.controller_children
tag @s[tag=kello.empty] add kello.attach
tag @s[tag=kello.empty] remove kello.empty



## LEADERS NOTICE, REASON NOT USING PR.TARGET IN PLACEDICATOR ENTITY SELECTOR :
##  - kello.ignore tagged entities will not have pr.target tagged for them, 
##    the reason is kello.ignore tagged entities are primarely display entities for decos
##    the indicator is not purposedly a decorational but simply as an accessibility option
##    and i decided that kello.ignore is the best fit for performance

##    i could change it to instead use kello.exclude instead to preserve pr.target.

execute if entity @s[tag=kello.entity.type.cogwheel_shaft] run kill @e[type=item_display,tag=kello.entity.type.placedicator,distance=..1,sort=nearest,limit=4]
execute if entity @s[tag=kello.entity.type.cogwheel] run kill @e[type=item_display,tag=pr.target,tag=kello.entity.type.groundicator,distance=..1,sort=nearest,limit=4]
execute if entity @s[tag=kello.entity.type.cogwheel_decshaft] run kill @e[type=item_display,tag=kello.entity.type.placedicator,distance=..1,sort=nearest,limit=4]
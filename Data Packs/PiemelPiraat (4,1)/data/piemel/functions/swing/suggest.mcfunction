# suggest (show indicator) of swing gun in perspective of the aimed-at target

tag @s add piemel.aimingswing
execute at @s facing entity @e[tag=piemel.swingtarget,tag=pr.target,limit=1] feet positioned ^ ^-.04 ^4 run function piemel:swing/condit-spwn

data merge entity @e[tag=piemel.swingtargetindicator,tag=pr.target,sort=nearest,limit=1] {Pose:{Head:[1.0f,0.0f,0.0f]}}
data modify entity @e[tag=piemel.swingtargetindicator,tag=pr.target,sort=nearest,limit=1] Pose.Head[0] set from entity @s Rotation[1]
data modify entity @e[tag=piemel.swingtargetindicator,tag=pr.target,sort=nearest,limit=1] Pose.Head[1] set from entity @s Rotation[0]
return 1
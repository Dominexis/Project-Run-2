# suggest (show indicator) of grapping gun in perspective of the aimed-at target

tag @s add piemel.aiminggrapple
execute at @s facing entity @e[tag=piemel.grabhooktarget,tag=pr.target,sort=nearest,limit=1] feet positioned ^ ^-.04 ^4 positioned ~ ~1 ~ run function piemel:grappling/condit-spwn

data merge entity @e[tag=piemel.grapplingtarget,tag=pr.target,sort=nearest,limit=1] {Pose:{Head:[1.0f,0.0f,0.0f]}}
# data modify entity @e[tag=piemel.grapplingtarget,tag=pr.target,sort=nearest,limit=1] Rotation set from entity @s Rotation
data modify entity @e[tag=piemel.grapplingtarget,tag=pr.target,sort=nearest,limit=1] Pose.Head[0] set from entity @s Rotation[1]
data modify entity @e[tag=piemel.grapplingtarget,tag=pr.target,sort=nearest,limit=1] Pose.Head[1] set from entity @s Rotation[0]
return 1
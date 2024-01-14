# checks if player is aiming at a target
# kill @e[tag=piemel.raytrace,tag=pr.target]
# execute as @s at @s anchored eyes run summon armor_stand ^ ^ ^ {Tags:["piemel.raytrace","pr.target"],Invisible:1b,Marker:1b}
# data modify entity @e[tag=piemel.raytrace,tag=pr.target,limit=1] Rotation set from entity @s Rotation
scoreboard players set raytrace piemel.values 0
execute at @s anchored eyes positioned ^ ^ ^ run function piemel:grappling/check-rt
return 1
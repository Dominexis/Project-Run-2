# Spawn entity

function animated_java:dangling_platform/summon




# Assign scores and entity ID

execute as @e[type=item_display,distance=..4.25,tag=aj.dangling_platform.root,tag=kello.entity.target.new] at @s rotated ~ 0 run function kello:entity/decal/component/moving_platform/spawn/score

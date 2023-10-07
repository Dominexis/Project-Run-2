# Spawn entity

scoreboard players operation #animation aj.i = $aj.launchpad.animation.bud aj.id
execute rotated ~ ~ run function animated_java:launchpad/summon/low_lod





# Assign scores and entity ID

execute as @e[type=item_display,distance=..0.5,tag=aj.launchpad.root,tag=kello.entity.target.new] at @s run function kello:entity/decal/component/launchpad/spawn/as
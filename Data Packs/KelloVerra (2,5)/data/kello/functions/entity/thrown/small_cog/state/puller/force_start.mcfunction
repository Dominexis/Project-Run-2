# Set state

scoreboard players set @s kello.entity.state 4



# Set value

scoreboard players operation @s kello.entity.timer = #thrown_small_cogwheel_lifetime kello.value



# Stop animation

function kello:entity/thrown/small_cog/animation/rotate/stop
execute as @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=aj.cogwheel.bone.small_cog,distance=..2,sort=nearest,limit=1] run data merge entity @s {transformation:{left_rotation:{axis:[0f,1f,0f],angle:0.3925}}}



# Set variant

#function animated_java:cogwheel/apply_variant/air
tag @s add kello.static






tag @s add kello.puller.target
# Teleport

scoreboard players operation #local kello.player.id = @s kello.player.id
execute as @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=aj.escapement.root,distance=..4,sort=nearest,limit=1] at @s run function kello:entity/thrown/small_cog/state/puller/as


tag @s remove kello.puller.target
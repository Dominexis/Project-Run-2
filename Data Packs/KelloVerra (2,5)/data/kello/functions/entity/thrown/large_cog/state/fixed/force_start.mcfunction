# Set state

scoreboard players set @s kello.entity.state 3



# Set value

scoreboard players operation @s kello.entity.timer = #thrown_large_cogwheel_lifetime kello.value



# Stop animation

function kello:entity/thrown/large_cog/animation/rotate/stop




# Set variant

function animated_java:cogwheel/apply_variant/air






tag @s add kello.fixed.target
# Teleport

execute as @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=kello.entity.type.cogwheel_shaft,tag=kello.entity.type.large,tag=kello.empty,distance=..2,sort=nearest,limit=1] at @s run function kello:entity/thrown/large_cog/state/fixed/as


tag @s remove kello.fixed.target
# Set state

scoreboard players set @s kello.entity.state 3



# Set value

scoreboard players operation @s kello.entity.timer = #thrown_small_cogwheel_lifetime kello.value



# Stop animation

function kello:entity/thrown/small_cog/animation/rotate/stop




# Set variant

function animated_java:cogwheel/apply_variant/air






tag @s add kello.fixed.target
# Teleport

execute as @e[type=minecraft:item_display,distance=..2,tag=pr.target,tag=!pr.ignore,tag=kello.entity.type.cogwheel_shaft,tag=kello.entity.type.small,tag=kello.empty,sort=nearest,limit=1] at @s run function kello:entity/thrown/small_cog/state/fixed/as


tag @s remove kello.fixed.target
return 1
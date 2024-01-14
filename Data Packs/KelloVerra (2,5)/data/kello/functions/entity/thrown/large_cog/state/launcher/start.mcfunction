# Set state

scoreboard players set #state kello.value 4



# Set value

scoreboard players operation @s kello.entity.timer = #thrown_large_cogwheel_lifetime kello.value



# Stop animation

function kello:entity/thrown/large_cog/animation/rotate/stop




# Set variant

function animated_java:cogwheel/apply_variant/air




# Set variant

#function animated_java:cogwheel/apply_variant/air
#tag @s add kello.static






tag @s add kello.launcher.target
# Teleport

scoreboard players operation #local kello.player.id = @s kello.player.id
execute as @e[type=minecraft:item_display,distance=..4,tag=pr.target,tag=!pr.ignore,tag=kello.entity.type.launchpad,tag=kello.entity.part.launchpad,sort=nearest,limit=1] at @s run function kello:entity/thrown/large_cog/state/launcher/as


tag @s remove kello.launcher.target




# SFX

execute as @p[tag=kello.entity.player.target] at @s run function kello:generic/sfx/cog_attach/player/launch/large
return 1
# Set state

scoreboard players set #state kello.value 3



# Set value

scoreboard players operation @s kello.entity.timer = #thrown_large_cogwheel_lifetime kello.value
scoreboard players set #disable_attach_sound kello.value 0
scoreboard players set @s kello.decal.timer 20



# Stop animation

function kello:entity/thrown/large_cog/animation/rotate/stop




# Set variant

function animated_java:cogwheel/apply_variant/air






tag @s add kello.fixed.target
# Teleport

execute as @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=kello.entity.type.cogwheel_shaft,tag=kello.entity.type.large,tag=kello.empty,distance=..24,sort=nearest,limit=1] at @s run function kello:entity/thrown/large_cog/state/fixed/as





# Set player state

execute as @a[tag=pr.target,tag=kello.entity.player.target] run scoreboard players set @s kello.player.cog.l 2


tag @s remove kello.fixed.target





# SFX

function kello:generic/sfx/cog_attach/ambient
execute if score #disable_attach_sound kello.value matches 0 as @a[tag=pr.target,tag=kello.entity.player.target] at @s run function kello:generic/sfx/cog_attach/player/large
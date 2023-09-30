# Start animation

execute if entity @s[tag=!aj.cogwheel.animation.large] run function kello:entity/thrown/large_cog/animation/rotate/start




# Set variant

function animated_java:cogwheel/apply_variant/default
function animated_java:cogwheel/apply_variant/large




# Special case state

execute if score @s kello.entity.state matches 3 at @s run function kello:entity/thrown/large_cog/state/fixed/detach
execute if score @s kello.entity.state matches 4 at @s run function kello:entity/thrown/large_cog/state/launcher/detach




# Set state

scoreboard players set @s kello.entity.state 1






# Set player

execute as @a[tag=pr.target,tag=kello.entity.player.target] run function kello:entity/thrown/large_cog/state/recoil/main_player
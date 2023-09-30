# Start animation

execute if entity @s[tag=!aj.cogwheel.animation.small] run function kello:entity/thrown/small_cog/animation/rotate/start




# Set variant

function animated_java:cogwheel/apply_variant/default
function animated_java:cogwheel/apply_variant/small




# Special case state

execute if score @s kello.entity.state matches 3 run function kello:entity/thrown/small_cog/state/fixed/detach
execute if score @s kello.entity.state matches 4 run function kello:entity/thrown/small_cog/state/puller/detach




# Set state

scoreboard players set @s kello.entity.state 1






# Set player

execute as @a[tag=pr.target,tag=kello.entity.player.target] run function kello:entity/thrown/small_cog/state/recoil/main_player
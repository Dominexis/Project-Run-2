# Start animation

execute if entity @s[tag=!aj.cogwheel.animation.large] run function kello:entity/thrown/large_cog/animation/rotate/start




# Set variant

function animated_java:cogwheel/apply_variant/default
function animated_java:cogwheel/apply_variant/large




# Special case state

execute if score @s kello.entity.state matches 3 run function kello:entity/thrown/large_cog/state/fixed/detach

scoreboard players operation #local kello.aim.id = @s kello.aim.id
execute as @e[type=minecraft:text_display,distance=..64,tag=kello.entity.type.aimdicator,tag=kello.entity.type.large] if score @s kello.aim.id = #local kello.aim.id run scoreboard players remove @s kello.aim.count 1



# Set state

scoreboard players set @s kello.entity.state 1






# Set player

execute as @a[tag=pr.target,tag=kello.entity.player.target] run function kello:entity/thrown/large_cog/state/recoil/main_player

scoreboard players set #boolean kello.value 1
return 1
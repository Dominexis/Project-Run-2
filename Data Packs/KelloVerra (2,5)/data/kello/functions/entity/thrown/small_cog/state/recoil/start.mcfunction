# Set state

scoreboard players set #state kello.value 1
scoreboard players set @s kello.entity.parent_id 0



# Start animation

execute if entity @s[tag=!aj.cogwheel.animation.small] run function kello:entity/thrown/small_cog/animation/rotate/start



# Special case state

# scoreboard players operation #local kello.aim.id = @s kello.aim.id
# execute as @e[type=text_display,tag=kello.entity.type.aimdicator,tag=kello.entity.type.large,distance=..64] if score @s kello.aim.id = #local kello.aim.id run scoreboard players remove @s kello.aim.count 1

execute if score @s kello.entity.state matches 3 run function kello:entity/thrown/small_cog/state/fixed/detach




# Set variant

function animated_java:cogwheel/apply_variant/default
function animated_java:cogwheel/apply_variant/small





# Set player

execute as @a[tag=pr.target,tag=kello.entity.player.target] run function kello:entity/thrown/small_cog/state/recoil/main_player




# SFX

execute as @a[tag=pr.target,tag=kello.entity.player.target] at @s run function kello:generic/sfx/cog_recoil/small
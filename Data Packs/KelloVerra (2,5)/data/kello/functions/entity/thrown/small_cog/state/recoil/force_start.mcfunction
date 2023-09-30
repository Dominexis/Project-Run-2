# # Start animation

# execute if entity @s[tag=!aj.cogwheel.animation.small] run function kello:entity/thrown/small_cog/animation/rotate/start




# # Set variant

# function animated_java:cogwheel/apply_variant/default
# function animated_java:cogwheel/apply_variant/small




# # Special case state

# execute if score @s kello.entity.state matches 3 run function kello:entity/thrown/small_cog/state/fixed/detach
# execute if score @s kello.entity.state matches 4 run function kello:entity/thrown/small_cog/state/puller/detach

# scoreboard players operation #local kello.aim.id = @s kello.aim.id
# execute as @e[type=text_display,tag=kello.entity.type.aimdicator,tag=kello.entity.type.small,distance=..64] if score @s kello.aim.id = #local kello.aim.id run scoreboard players remove @s kello.aim.count 1



# # Set state

# scoreboard players set @s kello.entity.state 1





# # Set player

# execute as @a[tag=pr.target,tag=kello.entity.player.target] run function kello:entity/thrown/small_cog/state/recoil/main_player

# scoreboard players set #boolean kello.value 1


tag @s add kello.state.force_recoil
#tag @s add kello.entity.large_cogwheel_launching
tp @s ~ ~ ~

# A single tp @s isnt enough, double it to make sure consistency is maintained
tp @s @s
tp @s @s
tp @s @s

tag @s add kello.state.cogwheel_was_launched_l

execute positioned as @s run function kello:player/launchpad/start



# Combo sensitive sfx

scoreboard players operation #sfx_progress kello.value = @s kello.player.l_launch_combo
scoreboard players operation @s kello.player.l_combo_timer = #combo_timer kello.value
scoreboard players add @s kello.player.l_launch_combo 1
function kello:generic/sfx/cog_launch/large



# Pickup

function kello:entity/thrown/large_cog/state/pickup/start
return 1
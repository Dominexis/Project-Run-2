# Pre entity execution

function #kello:event/left_click/player/pre



# Find entity

tag @s add this
execute as @e[type=minecraft:interaction,distance=..6.75,tag=kello.entity.interactable] run function kello:player/interact/left/interact
tag @s remove this



# Post entity execution

function #kello:event/left_click/player/post



# Remove attack sfx

scoreboard players set @s kello.sound.stop_att 5
function kello:generic/sfx/disable_att




# Revoke

advancement revoke @s only kello:player/left_click
tag @s remove kello.player.interacted
return 1
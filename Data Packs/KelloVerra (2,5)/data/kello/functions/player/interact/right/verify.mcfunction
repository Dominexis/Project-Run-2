# Pre entity execution

function #kello:event/right_click/player/pre



# Find entity

tag @s add this
execute as @e[type=minecraft:interaction,distance=..6.75,tag=kello.entity.interactable] run function kello:player/interact/right/interact
tag @s remove this



# Post entity execution

function #kello:event/right_click/player/post




# Revoke

advancement revoke @s only kello:player/right_click
tag @s remove kello.player.interacted
return 1
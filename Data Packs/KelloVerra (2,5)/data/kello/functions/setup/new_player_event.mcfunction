# Reset all non-spectating player's interaction

kill @e[type=minecraft:interaction,tag=pr.target,tag=kello.entity.interactable]
execute as @a[gamemode=!spectator,tag=pr.target] run function kello:player/tick/check_interaction



# Attempt update all checkpoints

function kello:entity/checkpoint/generic/update_checkpoints




# Reset

scoreboard players set #queue_new_player_event kello.value 0
return 1
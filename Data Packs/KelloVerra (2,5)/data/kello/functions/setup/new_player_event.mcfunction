# Reset all non-spectating player's interaction

kill @e[type=interaction,tag=pr.target,tag=kello.entity.interactable]
execute as @a[tag=pr.target,gamemode=!spectator] run function kello:player/tick/check_interaction



# Attempt update all checkpoints

function kello:entity/checkpoint/generic/update_checkpoints




# Reset

scoreboard players set #queue_new_player_event kello.value 0
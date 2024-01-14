#kill @e[type=interaction,tag=pr.target,tag=kello.entity.interactable]
execute as @a[gamemode=!spectator,tag=pr.target,tag=!kello.debug.no_interaction] run function kello:player/tick/check_interaction
return 1
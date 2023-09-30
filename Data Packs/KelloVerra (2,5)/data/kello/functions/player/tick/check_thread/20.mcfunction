#kill @e[type=interaction,tag=pr.target,tag=kello.entity.interactable]
execute as @a[tag=pr.target,gamemode=!spectator,tag=!kello.debug.no_interaction] run function kello:player/tick/check_interaction
execute as @a[tag=pr.target] run function kello:player/tick/music/stop_vanilla
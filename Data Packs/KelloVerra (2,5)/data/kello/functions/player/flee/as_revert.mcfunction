tag @s add kello.entity.destination_pos
execute as @p[tag=pr.target,tag=kello.player.return_target] positioned as @s run function kello:player/ride/summon
return 1
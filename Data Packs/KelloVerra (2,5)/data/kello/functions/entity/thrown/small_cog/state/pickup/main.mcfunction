# Call player

execute as @p[tag=pr.target,tag=kello.entity.player.target,distance=..8] run function kello:player/cog/small/recoil/pickup





# Terminate

tag @s add aj.terminate
kill @e[type=marker,tag=kello.entity.aim]
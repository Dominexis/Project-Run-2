# Call player

execute as @p[distance=..8,tag=pr.target,tag=kello.entity.player.target] run function kello:player/cog/small/recoil/pickup





# Terminate

tag @s add aj.terminate
kill @e[type=minecraft:marker,tag=kello.entity.aim]
return 1
# Set player state

execute as @a[tag=pr.target,tag=kello.entity.player.target] run function kello:entity/thrown/small_cog/state/puller/main_player
return 1
# Revoke advancement

advancement revoke @s only pr:launch/post







# Manage gamemode

gamemode survival @s
gamemode survival @s[ scores={pr.gamemode=0}]
gamemode creative @s[ scores={pr.gamemode=1}]
gamemode adventure @s[scores={pr.gamemode=2}]
gamemode spectator @s[scores={pr.gamemode=3}]

execute as @a[tag=pr.player.launch.gamemode] run function pr:player/launch/post/gamemode







# Manage entities

execute as @e[type=#pr:family/mob,distance=..16,tag=pr.entity.launch.invulnerable] run function pr:player/launch/post/entity







# Stop sound

scoreboard players set @s pr.stop_launch_sound 3
stopsound @a[distance=..32] block minecraft:entity.generic.explode
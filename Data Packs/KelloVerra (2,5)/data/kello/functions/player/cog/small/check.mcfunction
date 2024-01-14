scoreboard players remove @s kello.player.cog.r_response 1
execute unless score @s kello.player.cog.r matches -1 if score @s kello.player.cog.r_cooldown matches ..0 run function kello:player/cog/small/verify
return 1
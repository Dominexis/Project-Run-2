scoreboard players remove @s kello.player.cog.l_response 1
execute unless score @s kello.player.cog.l matches -1 if score @s kello.player.cog.l_cooldown matches ..0 run function kello:player/cog/large/verify
return 1
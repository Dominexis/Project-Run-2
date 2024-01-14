# Decrease cooldown if not 0


scoreboard players remove @s[scores={kello.player.cog.l_cooldown=1..}] kello.player.cog.l_cooldown 1
scoreboard players remove @s[scores={kello.player.cog.r_cooldown=1..}] kello.player.cog.r_cooldown 1




# Check response

execute if score @s kello.player.cog.l_response matches 1.. run function kello:player/cog/large/check
execute if score @s kello.player.cog.r_response matches 1.. run function kello:player/cog/small/check




# Increase cooldown if negative and not 0

scoreboard players add @s[scores={kello.player.cog.l_cooldown=..-1}] kello.player.cog.l_cooldown 1
scoreboard players add @s[scores={kello.player.cog.r_cooldown=..-1}] kello.player.cog.r_cooldown 1


# Sound indication

execute unless score @s kello.player.cog.l matches -1 unless score @s kello.player.cog.l matches 1 if score @s kello.player.cog.l_cooldown matches -1..1 unless score @s kello.player.cog.l_cooldown matches 0 run function kello:generic/sfx/cog_cooldown_finish/large_recoil
execute unless score @s kello.player.cog.l matches -1..0 if score @s kello.player.cog.l_cooldown matches -1..1 unless score @s kello.player.cog.l_cooldown matches 0 run function kello:generic/sfx/cog_cooldown_finish/large_throw

execute unless score @s kello.player.cog.r matches -1 unless score @s kello.player.cog.r matches 1 if score @s kello.player.cog.r_cooldown matches -1..1 unless score @s kello.player.cog.r_cooldown matches 0 run function kello:generic/sfx/cog_cooldown_finish/small_recoil
execute unless score @s kello.player.cog.r matches -1..0 if score @s kello.player.cog.r_cooldown matches -1..1 unless score @s kello.player.cog.r_cooldown matches 0 run function kello:generic/sfx/cog_cooldown_finish/small_throw
return 1
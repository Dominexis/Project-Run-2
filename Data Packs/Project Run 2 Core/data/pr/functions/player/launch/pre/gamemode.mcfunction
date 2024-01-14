# Manage gamemode

scoreboard players set @s[gamemode=survival] pr.gamemode 0
scoreboard players set @s[gamemode=creative] pr.gamemode 1
scoreboard players set @s[gamemode=adventure] pr.gamemode 2
scoreboard players set @s[gamemode=spectator] pr.gamemode 3

gamemode spectator @s







# Add tag

tag @s add pr.player.launch.gamemode
return 1
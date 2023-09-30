# Assign ID

scoreboard players add #global kello.player.id 1
scoreboard players operation @s kello.player.id = #global kello.player.id


# Assign scores

scoreboard players add @s kello.player.l_launch_combo 0
scoreboard players add @s kello.player.r_launch_combo 0
scoreboard players add @s kello.player.l_parkour_combo 0
scoreboard players add @s kello.player.r_parkour_combo 0
scoreboard players add @s kello.player.l_combo_timer 0
scoreboard players add @s kello.player.r_combo_timer 0


scoreboard players reset @s kello.player.music_progress

scoreboard players set @s kello.player.checkpoint.id 0
scoreboard players set @s kello.player.chapter 0

scoreboard players set @s kello.player.cog.l -1
scoreboard players set @s kello.player.cog.r -1

scoreboard players set @s kello.player.coglected 0

scoreboard players add @s kello.player.cog.l_response 0
scoreboard players add @s kello.player.cog.r_response 0
scoreboard players add @s kello.player.cog.l_cooldown 0
scoreboard players add @s kello.player.cog.r_cooldown 0

scoreboard players set @s kello.player.title_timer 0
scoreboard players reset @s kello.player.title_progress
scoreboard players reset @s kello.player.title_state

scoreboard players set #queue_new_player_event kello.value 1


function kello:player/setup/choose_flag_color
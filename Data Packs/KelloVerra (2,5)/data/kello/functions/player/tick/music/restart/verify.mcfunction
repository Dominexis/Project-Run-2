execute if score @s kello.player.restart_music_cooldown matches 1.. run function kello:player/tick/music/restart/fail
execute if score @s kello.player.restart_music_cooldown matches ..0 unless score @s kello.player.music_progress matches 3 run function kello:player/tick/music/restart/main
execute if score @s kello.player.restart_music_cooldown matches ..0 if score @s kello.player.music_progress matches 3 run function kello:player/tick/music/restart/waitwhat

scoreboard players reset @s apparatus_restart_music
scoreboard players operation @s kello.player.restart_music_cooldown = #time kello.player.restart_music_cooldown
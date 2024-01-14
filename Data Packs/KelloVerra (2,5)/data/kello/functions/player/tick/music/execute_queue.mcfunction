execute if score @s kello.player.music_progress_queue matches 0 run function kello:player/tick/music/intro/play
execute if score @s kello.player.music_progress_queue matches 1 run function kello:player/tick/music/melody/play
execute if score @s kello.player.music_progress_queue matches 2 run function kello:player/tick/music/final/play
execute if score @s kello.player.music_progress_queue matches 3 run function kello:player/tick/music/outro/play
return 1
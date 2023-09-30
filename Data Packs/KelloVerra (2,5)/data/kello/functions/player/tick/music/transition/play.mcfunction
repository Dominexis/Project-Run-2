execute if score @s kello.player.music_transition_progress matches 0 run function kello:player/tick/music/intro/play_transition
execute if score @s kello.player.music_transition_progress matches 1 run function kello:player/tick/music/melody/play_transition
execute if score @s kello.player.music_transition_progress matches 2 run function kello:player/tick/music/final/play_transition
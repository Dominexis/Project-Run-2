function pr:time/get
execute if score @s kello.player.music_transition_timestamp < #time pr.value run function kello:player/tick/music/transition/play
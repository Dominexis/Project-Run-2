execute if entity @s[tag=kello.will_transition] run function kello:player/tick/music/restart/transition


function pr:time/get
execute if score @s kello.player.music_timestamp <= #time pr.value if entity @s[tag=!kello.music_queue,tag=kello.music_repeat] run function kello:player/tick/music/restart/play_music
return 1
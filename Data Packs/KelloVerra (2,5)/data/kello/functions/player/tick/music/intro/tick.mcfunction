function pr:time/get
execute if score @s kello.player.music_timestamp < #time pr.value if entity @s[tag=!kello.music_queue,tag=kello.music_repeat] run function kello:player/tick/music/intro/play
execute if score @s kello.player.music_timestamp < #time pr.value if entity @s[tag=kello.music_queue] run function kello:player/tick/music/execute_queue
return 1
function pr:time/get
#execute if score @s kello.player.music_timestamp < #time pr.value if entity @s[tag=!kello.music_queue] run function kello:player/tick/music/outro/play
execute if score @s kello.player.music_timestamp < #time pr.value if entity @s[tag=kello.music_queue] run function kello:player/tick/music/execute_queue
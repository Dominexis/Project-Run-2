tellraw @s [{"text":"[AncientApparatus] ","color":"gold","bold":true,"type":"text"},{"text":"Restarted music.","color":"white","bold":false,"type":"text"}]


scoreboard players operation @s kello.player.music_timestamp = #time pr.value


execute if entity @s[tag=kello.music_queue] run function kello:player/tick/music/restart/queue
execute if entity @s[tag=kello.music_repeat,tag=!kello.music_queue] run function kello:player/tick/music/restart/play_music
return 1
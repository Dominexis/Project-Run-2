# Configure Timestamp when music ends

function pr:time/get
scoreboard players operation #previous kello.player.music_timestamp = @s kello.player.music_timestamp
scoreboard players operation @s kello.player.music_timestamp = #time pr.value
scoreboard players operation @s kello.player.music_timestamp += #music_melody_duration kello.player.music_timestamp

scoreboard players set @s kello.player.music_progress 1

tag @s[tag=kello.music_queue] remove kello.music_queue





# If another music is playing while this still play, stop this music

execute if score #previous kello.player.music_timestamp > #time pr.value run function kello:player/tick/music/reset
execute if entity @s[tag=kello.music_restart] run function kello:player/tick/music/reset






# Play music

playsound kello:music_melody record @s ~ ~ ~ 0.625 1 0.625
return 1
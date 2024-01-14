# Music

function kello:player/tick/music/melody/queue_transition
function kello:player/tick/music/final/queue

scoreboard players operation @s kello.player.music_timestamp = #time pr.value
function kello:player/tick/music/restart/queue




# Derelate

tag @s add kello.player.has_triggered.lvl_6_music_final
return 1
# Music

function kello:player/tick/music/final/queue_transition
function kello:player/tick/music/outro/queue

scoreboard players operation @s kello.player.music_timestamp = #time pr.value
function kello:player/tick/music/restart/queue




# Derelate

tag @s add kello.player.has_triggered.lvl_7_music_outro
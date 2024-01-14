scoreboard players operation @s kello.player.music_timestamp += #trans_pre kello.player.music_transition_timestamp


function kello:player/tick/music/transition/play
tag @s add kello.music_restart
return 1
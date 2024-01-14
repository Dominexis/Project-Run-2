
scoreboard players operation @s kello.player.music_transition_timestamp = @s kello.player.music_timestamp
scoreboard players operation @s kello.player.music_transition_timestamp -= #trans_pre kello.player.music_transition_timestamp
tag @s add kello.will_transition
return 1
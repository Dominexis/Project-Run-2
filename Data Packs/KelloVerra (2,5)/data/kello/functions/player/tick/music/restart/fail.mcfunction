# Notify

tellraw @s [{"text":"[AncientApparatus] ","color":"red","bold":true,"type":"text"},{"text":"Slow down, spamming is not permitted.","color":"white","bold":false,"type":"text"}]


# Increase time to punish spammer

scoreboard players operation @s kello.player.restart_music_cooldown += #time kello.player.restart_music_cooldown
return 1
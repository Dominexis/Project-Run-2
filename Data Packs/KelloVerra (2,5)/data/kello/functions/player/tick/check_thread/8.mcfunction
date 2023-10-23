
scoreboard players remove #music_resetting_notification_cooldown kello.value 1
execute if score #music_resetting_notification_cooldown kello.value matches ..0 run function kello:player/tick/music/notif



execute as @a[tag=pr.target] run function kello:player/tick/music/stop_vanilla
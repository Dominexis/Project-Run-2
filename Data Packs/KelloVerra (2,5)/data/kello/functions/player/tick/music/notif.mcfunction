scoreboard players set #music_resetting_notification_cooldown kello.value 12

scoreboard players set #input pr.value 10
function pr:generic/rng/lcg

execute if score #output pr.value matches 0..1 run function kello:player/tick/music/notif_trigger
return 1
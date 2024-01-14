tag @s remove kello.debug.no_interaction

# Give player the galaxy glazed cogwheel

scoreboard players set @s kello.player.cog.l 1
scoreboard players set @s kello.player.coglected 1
function kello:player/tick/check_interaction


# Title

function kello:player/tick/title/galaxy_glazed/start




# Music

function kello:player/tick/music/intro/play
function kello:player/tick/music/intro/queue_transition
function kello:player/tick/music/melody/queue


# Load level 2

scoreboard players set #level_id_to_assign kello.value 2
scoreboard players set #level_variant_to_load kello.value 0
function kello:tick/level/assign


# Sfx

playsound kello:large_cogwheel_collect master @s ~ ~ ~ 0.7 1 0.7




# Music notif

function kello:player/tick/music/notif_trigger
return 1
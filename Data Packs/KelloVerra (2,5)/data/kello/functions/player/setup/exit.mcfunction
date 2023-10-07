# Consistent player enter / relog setup

scoreboard players operation #local kello.player.id = @s kello.player.id
scoreboard players reset @s kello.player.void_y

function kello:player/setup/remove
clear @s diamond_horse_armor

tag @s remove kello.player.flag_atramentum
tag @s remove kello.player.flag_forestglide
tag @s remove kello.player.flag_nebulae
tag @s remove kello.player.flag_sundown

tag @s remove kello.player.progress.recoil_guide

scoreboard players set #logout_trigger kello.value 1

stopsound @s music kello:music_intro
stopsound @s music kello:music_melody
stopsound @s music kello:music_final
stopsound @s music kello:music_outro

tag @s remove kello.music_repeat

function kello:player/tick/area/reset


execute as @e[type=marker,tag=kello.void_marker] if score @s kello.player.id = #local kello.player.id run kill @s

# gamemode adventure
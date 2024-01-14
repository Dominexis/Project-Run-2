# Consistent player enter / relog setup

scoreboard players operation #local kello.player.id = @s kello.player.id
scoreboard players reset @s kello.player.void_y

function kello:player/setup/remove
clear @s minecraft:diamond_horse_armor

tag @s remove kello.player.flag_atramentum
tag @s remove kello.player.flag_forestglide
tag @s remove kello.player.flag_nebulae
tag @s remove kello.player.flag_sundown

tag @s remove kello.player.progress.recoil_guide

tag @s remove kello.player.has_recoiled_cogwheel
tag @s remove kello.state.cogwheel_was_attached_l
tag @s remove kello.state.cogwheel_was_attached_r

tag @s remove kello.state.cogwheel_was_launched_l
tag @s remove kello.state.cogwheel_was_launched_r

scoreboard players set #logout_trigger kello.value 1

stopsound @s record kello:music_intro
stopsound @s record kello:music_melody
stopsound @s record kello:music_final
execute unless score @s kello.player.music_progress matches 3 run stopsound @s record kello:music_outro

tag @s remove kello.music_repeat

function kello:player/tick/area/reset


execute as @e[type=minecraft:marker,tag=kello.void_marker] if score @s kello.player.id = #local kello.player.id run kill @s

# gamemode adventure
return 1
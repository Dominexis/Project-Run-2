# Reference

scoreboard players operation #local kello.player.id = @s kello.player.id
scoreboard players set #casterminate kello.value 0
tag @s add kello.player.target
function kello:player/cog/small/raycast/search
scoreboard players set #boolean kello.value 0
execute positioned ^ ^ ^-1 if block ~ ~ ~ #kello:generic/cogwheel_passable run function kello:entity/thrown/small_cog/spawn/main
execute if score #boolean kello.value matches 0 run function kello:entity/thrown/small_cog/spawn/main
scoreboard players set #set kello.aim.id 0
tag @s remove kello.player.target

# scoreboard players operation @s kello.player.r_cogwheel_timeout = #cogwheel_timeout_limit kello.value


# Change state

clear @s diamond_horse_armor{small_cog:1b}
scoreboard players set #crosshair_state kello.value 0



# SFX

function kello:generic/sfx/cog_throw/small
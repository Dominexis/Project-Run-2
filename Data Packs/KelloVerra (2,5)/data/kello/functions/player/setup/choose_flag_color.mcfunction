scoreboard players set #input pr.value 101
function pr:generic/rng/lcg

tag @s remove kello.player.flag_atramentum
tag @s remove kello.player.flag_forestglide
tag @s remove kello.player.flag_nebulae
tag @s remove kello.player.flag_sundown

execute if score #output pr.value matches 1..4 run tag @s add kello.player.flag_atramentum
execute if score #output pr.value matches 5..36 run tag @s add kello.player.flag_forestglide
execute if score #output pr.value matches 37..68 run tag @s add kello.player.flag_nebulae
execute if score #output pr.value matches 69..100 run tag @s add kello.player.flag_sundown

# tellraw @a {"score":{"objective":"pr.value","name":"#output"}}
return 1
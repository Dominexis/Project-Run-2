execute unless score @s kello.player.cog.r matches 1 unless predicate kello:largecogflip run function kello:player/cog/flip/branch/left
execute if score @s kello.player.cog.r matches 1 run function kello:player/cog/flip/branch/both/main
return 1
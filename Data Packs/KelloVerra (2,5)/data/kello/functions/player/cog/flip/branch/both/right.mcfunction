execute unless score @s kello.player.cog.l matches 1 unless predicate kello:smallcogflip run function kello:player/cog/flip/branch/right
execute if score @s kello.player.cog.l matches 1 run function kello:player/cog/flip/branch/both/main
return 1
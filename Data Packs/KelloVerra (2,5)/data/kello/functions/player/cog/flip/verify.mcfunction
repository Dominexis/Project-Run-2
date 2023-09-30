execute store success score #boolean kello.value if predicate kello:smallcogflip
execute store success score #boolean1 kello.value if predicate kello:largecogflip

scoreboard players operation #boolean kello.value += #boolean1 kello.value

execute unless score #boolean kello.value = @s kello.player.coglected run function kello:player/cog/flip/main
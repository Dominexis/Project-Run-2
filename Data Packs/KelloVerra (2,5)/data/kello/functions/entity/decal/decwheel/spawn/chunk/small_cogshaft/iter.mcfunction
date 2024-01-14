scoreboard players remove #iteration kello.value 1
scoreboard players add #chunk_counter kello.value 1
scoreboard players add #chunk_total kello.value 1

execute if score #chunk_counter kello.value matches 3.. run function kello:entity/decal/decwheel/spawn/chunk/small_cogshaft/verify

execute if score #iteration kello.value matches 1.. if score #chunk_counter kello.value matches 0.. positioned ^ ^ ^-1 unless block ~ ~ ~ #kello:generic/iter_passable positioned ^ ^ ^1 run function kello:entity/decal/decwheel/spawn/chunk/small_cogshaft/verify
execute if score #iteration kello.value matches 1.. positioned ^ ^ ^-1 if block ~ ~ ~ #kello:generic/iter_passable run function kello:entity/decal/decwheel/spawn/chunk/small_cogshaft/iter
return 1
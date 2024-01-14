# Scores

scoreboard players set #chunk_counter kello.value -1
scoreboard players set #chunk_total kello.value 0

scoreboard players set #iteration kello.value 16


# Iteration

function kello:entity/decal/decwheel/spawn/chunk/small_shaft/iter
return 1
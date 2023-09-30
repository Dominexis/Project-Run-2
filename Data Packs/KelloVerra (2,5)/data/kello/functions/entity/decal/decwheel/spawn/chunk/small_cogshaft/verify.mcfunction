
execute if score #chunk_counter kello.value matches 0 positioned ^ ^ ^0 summon item_display run function kello:entity/decal/decwheel/spawn/chunk/small_cogshaft/summon/1
execute if score #chunk_counter kello.value matches 1 positioned ^ ^ ^1 summon item_display run function kello:entity/decal/decwheel/spawn/chunk/small_cogshaft/summon/2
execute if score #chunk_counter kello.value matches 2 positioned ^ ^ ^2 summon item_display run function kello:entity/decal/decwheel/spawn/chunk/small_cogshaft/summon/3
execute if score #chunk_counter kello.value matches 3.. positioned ^ ^ ^3 summon item_display run function kello:entity/decal/decwheel/spawn/chunk/small_cogshaft/summon/4

scoreboard players set #chunk_counter kello.value -1
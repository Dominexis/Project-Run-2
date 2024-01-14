# Check

execute unless score #state kello.value matches 1..4 unless block ~ ~ ~ #kello:generic/cogwheel_passable run function kello:entity/thrown/small_cog/state/recoil/fail_n_fixed_check
execute unless score #state kello.value matches 1..4 positioned ^ ^ ^-0.5 unless block ~ ~ ~ #kello:generic/cogwheel_passable run function kello:entity/thrown/small_cog/state/recoil/fail_n_fixed_check
execute unless score #state kello.value matches 1..4 positioned ^ ^ ^0.5 unless block ~ ~ ~ #kello:generic/cogwheel_passable run function kello:entity/thrown/small_cog/state/recoil/fail_n_fixed_check
execute unless score #state kello.value matches 1..4 positioned ^ ^ ^1.0 unless block ~ ~ ~ #kello:generic/cogwheel_passable run function kello:entity/thrown/small_cog/state/recoil/fail_n_fixed_check
execute unless score #state kello.value matches 1..4 positioned ^ ^ ^1.5 unless block ~ ~ ~ #kello:generic/cogwheel_passable run function kello:entity/thrown/small_cog/state/recoil/fail_n_fixed_check

execute unless score #state kello.value matches 1..4 if block ~ ~ ~ minecraft:structure_void run function kello:entity/thrown/small_cog/state/recoil/fail_n_fixed_check
execute unless score #state kello.value matches 1..4 positioned ^ ^ ^-0.5 if block ~ ~ ~ minecraft:structure_void run function kello:entity/thrown/small_cog/state/recoil/fail_n_fixed_check
execute unless score #state kello.value matches 1..4 positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:structure_void run function kello:entity/thrown/small_cog/state/recoil/fail_n_fixed_check
execute unless score #state kello.value matches 1..4 positioned ^ ^ ^1.0 if block ~ ~ ~ minecraft:structure_void run function kello:entity/thrown/small_cog/state/recoil/fail_n_fixed_check
execute unless score #state kello.value matches 1..4 positioned ^ ^ ^1.5 if block ~ ~ ~ minecraft:structure_void run function kello:entity/thrown/small_cog/state/recoil/fail_n_fixed_check
return 1
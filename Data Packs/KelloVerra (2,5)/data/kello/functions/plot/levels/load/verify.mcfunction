execute if score #load_level_id kello.value matches 1 if score #level_variant_to_load kello.value matches 0 run function kello:plot/levels/load/start_room/main
execute if score #load_level_id kello.value matches 2 if score #level_variant_to_load kello.value matches 0 run function kello:plot/levels/load/lvl_2/main

execute if score #load_level_id kello.value matches 3 if score #level_variant_to_load kello.value matches 0 run function kello:plot/levels/load/lvl_3/main
execute if score #load_level_id kello.value matches 3 if score #level_variant_to_load kello.value matches 1 run function kello:plot/levels/load/lvl_3/branch

execute if score #load_level_id kello.value matches 4 if score #level_variant_to_load kello.value matches 0 run function kello:plot/levels/load/lvl_4/main
execute if score #load_level_id kello.value matches 5 if score #level_variant_to_load kello.value matches 0 run function kello:plot/levels/load/lvl_5/main
execute if score #load_level_id kello.value matches 6 if score #level_variant_to_load kello.value matches 0 run function kello:plot/levels/load/lvl_6/main
execute if score #load_level_id kello.value matches 7 if score #level_variant_to_load kello.value matches 0 run function kello:plot/levels/load/lvl_7/main
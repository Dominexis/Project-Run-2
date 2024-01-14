scoreboard objectives add lifeely.value dummy

execute positioned ~11 ~1 ~-27 run summon minecraft:marker ~00 ~ ~00 {Tags:["lifeely.dispenser"]}
execute positioned ~11 ~1 ~-27 run summon minecraft:marker ~01 ~ ~01 {Tags:["lifeely.dispenser"]}
execute positioned ~11 ~1 ~-27 run summon minecraft:marker ~02 ~ ~02 {Tags:["lifeely.dispenser"]}
execute positioned ~11 ~1 ~-27 run summon minecraft:marker ~03 ~ ~03 {Tags:["lifeely.dispenser"]}
execute positioned ~11 ~1 ~-27 run summon minecraft:marker ~05 ~ ~05 {Tags:["lifeely.dispenser"]}
execute positioned ~11 ~1 ~-27 run summon minecraft:marker ~06 ~ ~06 {Tags:["lifeely.dispenser"]}
execute positioned ~11 ~1 ~-27 run summon minecraft:marker ~07 ~ ~07 {Tags:["lifeely.dispenser"]}
execute positioned ~11 ~1 ~-27 run summon minecraft:marker ~08 ~ ~08 {Tags:["lifeely.dispenser"]}
execute positioned ~11 ~1 ~-27 run summon minecraft:marker ~09 ~ ~09 {Tags:["lifeely.dispenser"]}
execute positioned ~11 ~1 ~-27 run summon minecraft:marker ~10 ~ ~10 {Tags:["lifeely.dispenser"]}

execute positioned ~27 ~1 ~-3 run summon minecraft:marker ~ ~ ~00 {Tags:["lifeely.crusher","lifeely.time_0"]}
execute positioned ~27 ~1 ~-3 run summon minecraft:marker ~ ~ ~02 {Tags:["lifeely.crusher","lifeely.time_1"]}
execute positioned ~27 ~1 ~-3 run summon minecraft:marker ~ ~ ~04 {Tags:["lifeely.crusher","lifeely.time_2"]}
execute positioned ~27 ~1 ~-3 run summon minecraft:marker ~ ~ ~06 {Tags:["lifeely.crusher","lifeely.time_0"]}
execute positioned ~27 ~1 ~-3 run summon minecraft:marker ~ ~ ~08 {Tags:["lifeely.crusher","lifeely.time_1"]}
execute positioned ~27 ~1 ~-3 run summon minecraft:marker ~ ~ ~10 {Tags:["lifeely.crusher","lifeely.time_2"]}
execute positioned ~27 ~1 ~-3 run summon minecraft:marker ~ ~ ~12 {Tags:["lifeely.crusher","lifeely.time_0"]}
execute positioned ~27 ~1 ~-3 run summon minecraft:marker ~ ~ ~14 {Tags:["lifeely.crusher","lifeely.time_1"]}

# summon marker ~013 ~29 ~-34 {Tags:["lifeely.minecart"]}
# summon marker ~011 ~29 ~-32 {Tags:["lifeely.minecart"]}
# summon marker ~009 ~29 ~-33 {Tags:["lifeely.minecart"]}
# summon marker ~007 ~29 ~-32 {Tags:["lifeely.minecart"]}
# summon marker ~005 ~29 ~-32 {Tags:["lifeely.minecart"]}
# summon marker ~003 ~29 ~-31 {Tags:["lifeely.minecart"]}
# summon marker ~001 ~29 ~-30 {Tags:["lifeely.minecart"]}
# summon marker ~-03 ~29 ~-32 {Tags:["lifeely.minecart"]}
# summon marker ~-05 ~29 ~-30 {Tags:["lifeely.minecart"]}
# summon marker ~-07 ~29 ~-31 {Tags:["lifeely.minecart"]}
# summon marker ~-09 ~29 ~-30 {Tags:["lifeely.minecart"]}
# summon marker ~-11 ~29 ~-32 {Tags:["lifeely.minecart"]}

summon minecraft:marker ~13 ~49 ~-37 {Tags:["lifeely.minecart"]}
summon minecraft:marker ~11 ~49 ~-37 {Tags:["lifeely.minecart"]}
summon minecraft:marker ~09 ~49 ~-37 {Tags:["lifeely.minecart"]}
summon minecraft:marker ~07 ~49 ~-37 {Tags:["lifeely.minecart"]}
summon minecraft:marker ~05 ~49 ~-37 {Tags:["lifeely.minecart"]}
summon minecraft:marker ~03 ~49 ~-37 {Tags:["lifeely.minecart"]}
summon minecraft:marker ~01 ~49 ~-37 {Tags:["lifeely.minecart"]}
summon minecraft:marker ~-3 ~49 ~-37 {Tags:["lifeely.minecart"]}
summon minecraft:marker ~-5 ~49 ~-37 {Tags:["lifeely.minecart"]}
summon minecraft:marker ~-7 ~49 ~-37 {Tags:["lifeely.minecart"]}
summon minecraft:marker ~-9 ~49 ~-37 {Tags:["lifeely.minecart"]}
summon minecraft:marker ~-11 ~49 ~-37 {Tags:["lifeely.minecart"]}

summon minecraft:marker ~3 ~30 ~16 {Tags:["lifeely.villager"]}

summon minecraft:villager ~25 ~33 ~8 {Tags:["lifeely.bouncy_villager"],active_effects:[{id:"minecraft:slowness",duration:-1,amplifier:127b,show_particles:0b}]}
summon minecraft:villager ~25 ~37 ~-3 {Tags:["lifeely.bouncy_villager"],active_effects:[{id:"minecraft:slowness",duration:-1,amplifier:127b,show_particles:0b}]}
return 1
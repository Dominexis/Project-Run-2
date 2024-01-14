# var
scoreboard players operation #tmp.o2.sec funkytoc.moon.var = @s funkytoc.moon.oxygen
scoreboard players operation #tmp.o2.sec funkytoc.moon.var /= #const.20 funkytoc.moon.var
scoreboard players operation #tmp.o2.pair funkytoc.moon.var = #tmp.o2.sec funkytoc.moon.var
scoreboard players operation #tmp.o2.pair funkytoc.moon.var %= #const.2 funkytoc.moon.var

# sound
execute if score #tmp.o2.sec funkytoc.moon.var matches 16.. if score #tmp.o2.pair funkytoc.moon.var matches 0 run playsound minecraft:block.stone_button.click_on player @s ~ ~ ~ .2 .5
execute if score #tmp.o2.sec funkytoc.moon.var matches 8..15 run playsound minecraft:block.stone_button.click_on player @s ~ ~ ~ .3 .5
execute if score #tmp.o2.sec funkytoc.moon.var matches ..7 run playsound minecraft:block.stone_pressure_plate.click_on player @s ~ ~ ~ 1 .5

execute if score #tmp.o2.sec funkytoc.moon.var matches 3 run playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 2 2
execute if score #tmp.o2.sec funkytoc.moon.var matches 2 run playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 2 2
execute if score #tmp.o2.sec funkytoc.moon.var matches 1 run playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 2 2
return 1
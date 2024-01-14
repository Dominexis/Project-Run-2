# var
scoreboard players operation #tmp.o2.sec funkytoc.moon.var = @s funkytoc.moon.oxygen
scoreboard players operation #tmp.o2.sec funkytoc.moon.var /= #const.20 funkytoc.moon.var

# display
function pr:player/time/compute
execute if score #tmp.o2.sec funkytoc.moon.var matches 16.. run function help:3298004758a72638b10dfc2fab4e98aea72cbb7a69efe572daff1243f5622d07
execute if score #tmp.o2.sec funkytoc.moon.var matches 8..15 run function help:55a13a3f7e0ab6123353d1f1019d33aa8f8790e02bb44c251df09b24bdb6a86f
execute if score #tmp.o2.sec funkytoc.moon.var matches ..7 run function help:0f550d4a8ec6994db339437d346702e5c345715d272d5dc49fe657c4f19ebfd4

return 1
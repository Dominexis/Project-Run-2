summon minecraft:marker ~ 1 ~ {Tags:["funkytoc.moon.rng"]}
execute store result score Random funkytoc.moon.var run data get entity @e[type=minecraft:marker,tag=funkytoc.moon.rng,limit=1] UUID[0] 1
scoreboard players set #101 funkytoc.moon.var 101
scoreboard players operation Random funkytoc.moon.var %= #101 funkytoc.moon.var
kill @e[type=minecraft:marker,tag=funkytoc.moon.rng]
return 1
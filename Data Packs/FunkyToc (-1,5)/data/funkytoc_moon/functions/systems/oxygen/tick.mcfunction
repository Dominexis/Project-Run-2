# use
scoreboard players remove @s[scores={funkytoc.moon.oxygen=0..}] funkytoc.moon.oxygen 1

# custom action bar
scoreboard players operation #tmp.o2.modulo funkytoc.moon.var = @s funkytoc.moon.oxygen
scoreboard players operation #tmp.o2.modulo funkytoc.moon.var %= #const.20 funkytoc.moon.var
execute if score #tmp.o2.modulo funkytoc.moon.var matches 0 run function funkytoc_moon:systems/oxygen/display_actionbar
execute if score #tmp.o2.modulo funkytoc.moon.var matches 0 unless block ~ ~-1 ~ minecraft:light_blue_concrete run function funkytoc_moon:systems/oxygen/sound

# o2
execute if score @s funkytoc.moon.oxygen matches ..0 run function funkytoc_moon:systems/oxygen/suffoc
execute if entity @s[tag=funkytoc.moon.o2.refill] run function funkytoc_moon:systems/oxygen/refill

return 1
# refill o2
execute if score @s funkytoc.moon.oxygen < #o2.max funkytoc.moon.var run scoreboard players operation @s funkytoc.moon.oxygen += #o2.refill funkytoc.moon.var

# fx
execute anchored eyes positioned ^.25 ^-.2 ^.3 run particle minecraft:dust_color_transition .8 .9 1 1 1 1 1 ~ ~ ~ 0 0 0 0 1
particle minecraft:dust_color_transition .7 .8 1 1 1 1 1 ~ ~1 ~ .5 .5 .5 0 1

# force action bar
function funkytoc_moon:systems/oxygen/display_actionbar

# out loop
execute unless block ~ ~-1 ~ minecraft:light_blue_concrete run tag @s remove funkytoc.moon.o2.refill

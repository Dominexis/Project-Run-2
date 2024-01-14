# start sliding
tag @s add piemel.sliding
summon minecraft:minecart ~ ~-3 ~ {Tags:["piemel.slideanchor","pr.target"],Silent:1b}
effect give @s minecraft:slow_falling infinite 255 true
return 1
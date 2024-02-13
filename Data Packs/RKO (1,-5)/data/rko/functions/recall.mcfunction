# This function runs as and at all players who are sent back to a checkpoint in your plot

execute if entity @s[tag=rko_return_f] run function rko:misc/death/fall
execute if entity @s[tag=rko_return_p] run function rko:misc/death/splash
execute if entity @s[tag=rko_return_b] run function rko:misc/death/burn

tp @s[scores={rko.checkpoint=1}] ~ ~ ~ -90 0
tp @s[scores={rko.checkpoint=2}] ~ ~ ~ 90 0
tp @s[scores={rko.checkpoint=3}] ~ ~ ~ 0 0
tp @s[scores={rko.checkpoint=4}] ~ ~ ~ 0 0

# Left #
execute unless block ~ -18 ~ minecraft:sponge at @s run tp @s[scores={rko.checkpoint=1..2}] ~ ~ ~ ~180 ~
return 1
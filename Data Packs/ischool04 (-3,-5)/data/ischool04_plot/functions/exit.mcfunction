# This function runs as and at all players that exit your plot
# Use this to remove any scores/tags/effects/items from the player
title @s times 20 100 20
title @s subtitle ""
title @s title ""
stopsound @s master minecraft:entity.ender_dragon.growl
clear @s
tellraw @s [{"text":"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            "}]
scoreboard players reset @s isch.bnp
scoreboard players reset @s isch.ChPl
scoreboard players reset @s isch.kmc
scoreboard players reset @s isch.prbt
scoreboard players reset @s isch.dth
scoreboard players reset @s isch.regen
scoreboard players reset @s isch.drop.tr
scoreboard players reset @s isch.drop.ch
scoreboard players reset @s isch.drop.bo
scoreboard players reset @s isch.drop.le
effect clear @s
tag @s remove plvl1
tag @s remove plvl2
tag @s remove kmc
tag @s remove ridingS
tag @s remove started.ride
tag @s remove part1
tag @s remove part2
tag @s remove wait_response
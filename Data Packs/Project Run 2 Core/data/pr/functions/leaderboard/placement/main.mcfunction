# Execute function

execute as @e[type=minecraft:text_display,tag=pr.leaderboard.root] if score @s pr.plot = #plot pr.value at @s run function pr:leaderboard/placement/apply







# Tell the player about it

function pr:leaderboard/name

execute if score #placement pr.value matches 1 run function help:e69111f10884f1e53bf6840ad65d9690fc8c51cc64bf5ac15a14640cdea31183
execute if score #placement pr.value matches 2 run function help:f7ba8d8669a22e8f895e76a2a5b0eaf32c574926f0c2932b618a8e3f0fede53d
execute if score #placement pr.value matches 3 run function help:4cb4e3778838cb6a85edc0523fd0bf25f4d2127559573dcf3a65d17adf859735
execute if score #placement pr.value matches 4 run function help:e0d22529b3eadac29a9641d4560b49eb934a1ae8de83c689eb7bbbf4402e7c54
execute if score #placement pr.value matches 5 run function help:7dd2597396e6eafb6b62b7f7fb0f53968f14ab53f6d14173084e011e475f5b98
return 1
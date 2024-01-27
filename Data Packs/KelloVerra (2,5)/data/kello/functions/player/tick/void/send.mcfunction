tp @s @s
tp @s @s

function pr:player/checkpoint/send_to

execute at @s run function kello:player/tick/void/sample_y

effect give @s minecraft:slow_falling 1 1 true
return 1
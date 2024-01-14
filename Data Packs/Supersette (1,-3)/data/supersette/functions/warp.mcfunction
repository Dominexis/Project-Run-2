effect give @s minecraft:resistance 1 4 true
tp @s ~ ~ ~ ~ ~
function pr:player/checkpoint/mark_self
playsound minecraft:entity.enderman.teleport master @s
return 1
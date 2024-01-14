tp @s @e[tag=lory.spawnpoint,tag=pr.target,sort=random,limit=1]
tellraw @s {"text":"You died!","color":"red","type":"text"}
effect give @s minecraft:slowness 1 9 true
effect give @s minecraft:jump_boost 1 137 true
tag @s remove lory.playing
function lory:run_stop
execute at @s run playsound minecraft:item.bucket.empty master @s
return 1
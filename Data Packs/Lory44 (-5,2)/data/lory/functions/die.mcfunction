tp @s @e[tag=lory.spawnpoint,sort=random,limit=1,tag=pr.target]
tellraw @s {"text":"You died!","color":"red"}
effect give @s slowness 1 9 true
effect give @s jump_boost 1 137 true
tag @s remove lory.playing
function lory:run_stop
execute at @s run playsound minecraft:item.bucket.empty master @s
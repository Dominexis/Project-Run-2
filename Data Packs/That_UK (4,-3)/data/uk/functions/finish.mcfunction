effect clear @s levitation
effect give @s blindness 4 0 true
tp @s 423 103 -247 -90 0
execute at @s run playsound minecraft:ambient.cave master @s ~ ~ ~ 100

tag @s remove uk_has_bow
tag @s remove uk_kill_requirement
tag @s remove uk_code_success
scoreboard players set @s uk_kill 0
scoreboard players set @s uk_code 0
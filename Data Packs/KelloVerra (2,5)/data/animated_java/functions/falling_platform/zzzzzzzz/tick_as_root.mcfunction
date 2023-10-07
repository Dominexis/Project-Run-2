execute unless score @s aj.falling_platform.rig_loaded = @s aj.falling_platform.rig_loaded run function animated_java:falling_platform/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
#execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:falling_platform/zzzzzzzz/animations/tick
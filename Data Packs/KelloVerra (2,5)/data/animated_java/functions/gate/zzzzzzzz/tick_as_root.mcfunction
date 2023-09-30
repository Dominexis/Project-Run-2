execute unless score @s aj.gate.rig_loaded = @s aj.gate.rig_loaded run function animated_java:gate/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
#execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:gate/zzzzzzzz/animations/tick
function #animated_java:gate/on_tick/as_root
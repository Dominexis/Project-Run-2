execute unless score @s aj.cogwheel.rig_loaded = @s aj.cogwheel.rig_loaded run function animated_java:cogwheel/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:cogwheel/zzzzzzzz/animations/tick
function #animated_java:cogwheel/on_tick/as_root
return 1
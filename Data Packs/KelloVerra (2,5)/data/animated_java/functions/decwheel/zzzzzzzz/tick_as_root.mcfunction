execute unless score @s aj.decwheel.rig_loaded = @s aj.decwheel.rig_loaded run function animated_java:decwheel/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:decwheel/zzzzzzzz/animations/tick
function #animated_java:decwheel/on_tick/as_root
return 1
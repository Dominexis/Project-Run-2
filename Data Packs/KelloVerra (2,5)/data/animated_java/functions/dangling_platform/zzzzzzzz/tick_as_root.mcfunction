execute unless score @s aj.dangling_platform.rig_loaded = @s aj.dangling_platform.rig_loaded run function animated_java:dangling_platform/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
function animated_java:dangling_platform/zzzzzzzz/animations/tick
function #animated_java:dangling_platform/on_tick/as_root
return 1
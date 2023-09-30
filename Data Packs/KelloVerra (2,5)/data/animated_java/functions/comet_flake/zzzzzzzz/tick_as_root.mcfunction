execute unless score @s aj.comet_flake.rig_loaded = @s aj.comet_flake.rig_loaded run function animated_java:comet_flake/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
#execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:comet_flake/zzzzzzzz/animations/tick
function #animated_java:comet_flake/on_tick/as_root
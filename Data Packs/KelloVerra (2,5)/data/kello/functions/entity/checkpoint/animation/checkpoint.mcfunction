function animated_java:checkpoint_flag/animations/pause_all
function animated_java:checkpoint_flag/animations/curl/stop
function animated_java:checkpoint_flag/animations/checkpoint/play

tp @s ~ ~ ~ facing entity @a[tag=pr.target,distance=..4,gamemode=!spectator,sort=nearest,limit=1]
execute rotated as @s run tp @s ~ ~ ~ ~ 0
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
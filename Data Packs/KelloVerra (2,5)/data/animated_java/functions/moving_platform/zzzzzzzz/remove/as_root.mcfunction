execute at @s run function #animated_java:moving_platform/on_remove/as_root
execute on passengers on origin run kill @s
execute on passengers run kill @s
kill @s
return 1
execute at @s run function #maze_escape:maze_npc/on_remove/as_root
execute on passengers on origin run kill @s
execute on passengers run kill @s
kill @s
return 1
#remove animation
function maze_escape:maze_npc/uninstall

#remove npc
kill @e[tag=maze_escape.hitbox]
kill @e[tag=maze_escape]
function maze_escape:maze_npc/remove/all
return 1
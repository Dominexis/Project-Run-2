function titruc.interactivejump.sys:quit/quit_block
function titruc.interactivejump.sys:quit/quit_marker
function titruc.interactivejump.sys:quit/quit_other

kill @e[type=minecraft:text_display,tag=titruc.hint,tag=pr.target]
return 1
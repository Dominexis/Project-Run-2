scoreboard players add @s kello.player.title_progress 1
scoreboard players set @s kello.player.title_state 0
scoreboard players set @s kello.player.title_timer 67

title @s clear
title @s times 20 40 5
title @s title {"text":"\uE002","font":"kello:fullscreen","type":"text"}
return 1
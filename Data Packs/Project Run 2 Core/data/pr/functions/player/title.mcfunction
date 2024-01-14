# Send title

title @s times 10 70 30
title @s title [{"text":"Project","color":"white","type":"text"}," ",{"text":"Run","color":"green","type":"text"}," ",{"text":"2","color":"yellow","type":"text"}]
title @s subtitle [{"text":"By ","type":"text"},{"text":"Minigame","color":"yellow","type":"text"}," ",{"text":"Makers","color":"gold","type":"text"}]

scoreboard players set @s pr.title_cooldown 200
return 1
summon minecraft:boat ~ ~ ~ {Type:"birch",Tags:["Snowvillage","pr.target"],Invulnerable:1b,Rotation:[-90.0f,0.0f]}
title @a[distance=..8,tag=pr.target] title {"text":"Boat summoned!","bold":true,"type":"text"}
title @a[distance=..8,tag=pr.target] subtitle {"text":"Ride your boat to the end first!","bold":true,"type":"text"}
return 1
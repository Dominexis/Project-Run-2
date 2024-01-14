data modify entity @s AngryAt set from entity @a[tag=pr.target,sort=nearest,limit=1] UUID
tag @s[tag=!engared,tag=pr.target] add engared
return 1
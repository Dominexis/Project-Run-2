



#runs as player that dropped an item in my plot
scoreboard players set @s zombie_dropitem 0
kill @e[type=item,distance=..3,tag=pr.target,sort=nearest,limit=1]
function zombie1111:player_giveitems

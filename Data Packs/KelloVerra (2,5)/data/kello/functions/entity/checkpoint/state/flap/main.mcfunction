scoreboard players add @s kello.entity.timer 1
execute unless entity @a[distance=..3.75,tag=pr.target,predicate=!kello:unsafe] run scoreboard players add @s kello.entity.timer 19
return 1
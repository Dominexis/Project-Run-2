execute if score @p[tag=bnsd.move,tag=pr.target] bnsd.1Pos matches 1.. run tp @s ~ ~1 ~-4 ~-90 ~
execute if score @p[tag=bnsd.move,tag=pr.target] bnsd.1Pos matches 0 run tp @s ~ ~1 ~-4
execute if score @p[tag=bnsd.move,tag=pr.target] bnsd.1Pos matches ..-1 run tp @s ~ ~1 ~-4 ~90 ~

return 1
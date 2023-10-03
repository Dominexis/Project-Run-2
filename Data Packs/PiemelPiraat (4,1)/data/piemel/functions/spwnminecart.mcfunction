# deprecated and unused
execute align x align y align z positioned ~.5 ~ ~.5 summon minecart run ride @p[tag=pr.target] mount @s
execute store result entity @e[type=minecart,tag=pr.target,sort=nearest,limit=1] Motion[0] float 100 run data get entity @s Motion[0] 100
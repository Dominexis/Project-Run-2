



summon minecraft:marker ~ ~1 ~ {Tags:["zombiePlot","zombieLaserTarget","zombieNew","pr.target"]}
execute as @e[type=minecraft:marker,tag=zombieNew,tag=pr.target] run function zombie1111:player_shootlaser_settarget_configure

return 1
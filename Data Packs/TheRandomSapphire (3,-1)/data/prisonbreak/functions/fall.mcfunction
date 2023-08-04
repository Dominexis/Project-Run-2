fill ~ ~-1 ~ ~-4 ~-1 ~-4 air
scoreboard players set replacefloor prisonbreak.time 100
scoreboard players set @a[tag=pr.target,dx=-3.5,dz=-4,tag=!prisonbreak.fallen] prisonbreak.time 35
tag @a[tag=pr.target,dx=-3.5,dz=-4,tag=!prisonbreak.fallen] add prisonbreak.fallen
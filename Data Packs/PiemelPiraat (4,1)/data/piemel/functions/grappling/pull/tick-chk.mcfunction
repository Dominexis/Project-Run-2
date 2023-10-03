# preliminary check for grappling players
execute positioned ~-24 ~-25 ~24 as @s[dx=3,dy=1,dz=3] run function piemel:grappling/pull/cave-tp
execute at @s[tag=!piemel.tpd] facing entity @e[tag=piemel.grabhooktarget,tag=pr.target,sort=nearest,limit=1] feet run function piemel:grappling/pull/tick
execute at @s[tag=piemel.tpd] facing entity @e[tag=piemel.grabhookfaketarget,tag=pr.target,limit=1] feet run function piemel:grappling/pull/tick
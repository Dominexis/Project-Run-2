# remove old target indicators
# kill @e[tag=piemel.grapplingtarget,tag=!piemel.new,tag=pr.target]
# kill @e[tag=piemel.swingtargetindicator,tag=!piemel.new,tag=pr.target]
# mark new indicators as old (so that they are killed next tick, persistent for one tick after creation)
# tag @e[tag=piemel.new,tag=pr.target] remove piemel.new

# tick everyone swinging or pulling the grappling hook
# execute as @a[scores={piemel.pullprog=1..},tag=pr.target] run function piemel:grappling/pull/tick-chk
# execute as @a[scores={piemel.swingprog=1..},tag=pr.target] run function piemel:swing/jump/tick

# check aim for players at swing
# tag @a[tag=pr.target] remove piemel.aimingswing
# execute positioned ~-34 ~39 ~ as @a[distance=..1.3,tag=pr.target] at @s run function piemel:swing/checkitem

# tick function
execute as @a[tag=pr.target] at @s run function piemel:tick_player

# return dropped item to player
# execute positioned ~-39 ~-50 ~-39 as @e[type=item,dx=80,dy=100,dz=80,tag=pr.target] run function piemel:returnitem

# tick slide
execute positioned ~-25 ~24 ~33 as @a[tag=!piemel.sliding,distance=..1,tag=pr.target] run function piemel:slide/start
execute positioned ~-25 ~24 ~35 as @a[tag=!piemel.sliding,distance=..1,tag=pr.target] run function piemel:slide/start

execute as @e[type=minecart,tag=pr.target] at @s unless entity @a[distance=..5,tag=pr.target] run kill @s

execute positioned ~-18 ~7 ~-37 as @a[distance=..1,tag=pr.target,tag=!piemel.trident] run function piemel:acquire_trident

kill @e[type=item,tag=pr.target,tag=!piemel.trident]



# Warp pipe

execute positioned ~-24 ~-42 ~24 align xyz run effect give @a[dx=2,dy=24,dz=2,tag=pr.target] levitation 1 2 true
execute positioned ~-23 ~-21 ~25 as @a[distance=..2,tag=pr.target] positioned ~23 ~21 ~-25 positioned ~9 ~-3 ~-34 run function piemel:warp
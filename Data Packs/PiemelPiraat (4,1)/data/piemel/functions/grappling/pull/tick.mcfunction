# pull player grappling closed to target
tp @s ^ ^ ^.6
scoreboard players add @s piemel.pullprog 1
execute if block ^ ^ ^2 lightning_rod run function piemel:grappling/pull/end
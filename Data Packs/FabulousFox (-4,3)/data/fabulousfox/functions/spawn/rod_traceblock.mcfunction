# Spawn
scoreboard players add i fabulousfox_spawn_args 1
execute align xyz unless entity @e[type=minecraft:block_display,distance=..0.2,tag=pr.target] if score z fabulousfox_spawn_args matches 0 run summon minecraft:block_display ~ ~ ~ {Tags:["pr.target","fabulousfox_rod"],block_state:{},BlockState:{}}
execute align xyz unless entity @e[type=minecraft:block_display,distance=..0.2,tag=pr.target] run summon minecraft:block_display ~ ~ ~ {Tags:["pr.target","fabulousfox_rod"],block_state:{},BlockState:{}}
execute if score i fabulousfox_spawn_args <= blocks fabulousfox_spawn_args positioned ^ ^ ^1 run function fabulousfox:spawn/rod_traceblock
return 1
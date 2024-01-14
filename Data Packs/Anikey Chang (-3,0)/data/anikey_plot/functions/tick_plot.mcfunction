# This function will run every tick while players are in your plot on the center block at Y=0

#enter the mirror
execute at @e[type=minecraft:marker,tag=pr.target,tag=anikey_tp_in,limit=1] as @a[gamemode=!spectator,distance=0..2,tag=pr.target] at @s run function anikey_plot:mirror/enter


#floating table
execute at @e[type=minecraft:marker,tag=pr.target,tag=anikey_floating_table] run particle minecraft:instant_effect ~ ~ ~ 0.2 0.1 0.2 0.001 5 force

execute at @e[type=minecraft:marker,tag=pr.target,tag=anikey_floating_table] run effect give @a[gamemode=!spectator,distance=0..2,tag=pr.target] minecraft:levitation 1 5 true

execute at @e[type=minecraft:marker,tag=pr.target,tag=anikey_floating_table] run effect give @a[gamemode=!spectator,distance=0..2,tag=pr.target] minecraft:slow_falling 4 1 true


#exit the mirror
execute as @a[gamemode=!spectator,tag=pr.target,tag=anikey_InsideMirror] at @s if entity @s[y=62,dy=1] run function anikey_plot:mirror/exit
#out of range
execute as @a[gamemode=!spectator,tag=pr.target,tag=anikey_InsideMirror] at @s if entity @s[y=-20,dy=-1] run function anikey_plot:mirror/out_range
return 1
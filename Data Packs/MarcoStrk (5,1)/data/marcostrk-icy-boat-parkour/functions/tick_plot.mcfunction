# This function will run every tick while players are in your plot on the center block at Y=0


# Player main that gets executed for every player inside the plot
execute as @a[tag=pr.target] run function marcostrk-icy-boat-parkour:players/main

# Boats
execute as @e[type=minecraft:boat,tag=pr.target] run function marcostrk-icy-boat-parkour:boat/main

# Jump platforms
execute as @e[tag=marcostrk-icy-boat-parkour-Jump,type=minecraft:marker] at @s run function marcostrk-icy-boat-parkour:jumper/main

# NoGravity Jumps
execute as @e[tag=marcostrk-icy-boat-parkour-NoGravity,type=minecraft:marker] at @s as @e[type=minecraft:boat,dx=5,dy=1,dz=5,tag=pr.target] run function marcostrk-icy-boat-parkour:nogravity/main

execute as @a[tag=pr.target] at @s if block ~ ~-0.5 ~ minecraft:red_concrete run function marcostrk-icy-boat-parkour:finish
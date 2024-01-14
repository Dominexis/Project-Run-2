# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities

# apparently the benefit of 'type=' needs at least 1 subchunk discriminator condition, that's why 'distance='

execute if score $snake_timer lory.var matches 0.. run function lory:snake/off

kill @e[type=minecraft:marker,distance=0..128,tag=lory.snake_part,tag=pr.target]
kill @e[distance=0..128,tag=lory.raft_keeper,tag=pr.target]

kill 0073bfd4-016d-1b4b-0001-320713876e6e

kill @e[type=minecraft:armor_stand,distance=0..128,tag=lory.raft_keeper,tag=lory.npc,tag=pr.target]

kill @e[type=minecraft:boat,tag=pr.target]
return 1
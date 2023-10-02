# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities

# apparently the benefit of 'type=' needs at least 1 subchunk discriminator condition, that's why 'distance='
kill @e[type=marker,distance=0..128,tag=pr.target,tag=lory.snake_part]

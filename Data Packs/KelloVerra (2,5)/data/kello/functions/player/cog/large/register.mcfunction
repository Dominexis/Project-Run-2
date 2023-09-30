# Function is run outside the tick loop, to preserve pr.target 
# i'll use a timer instead + other game design advantages

scoreboard players operation @s kello.player.cog.l_response = #throw_response kello.value
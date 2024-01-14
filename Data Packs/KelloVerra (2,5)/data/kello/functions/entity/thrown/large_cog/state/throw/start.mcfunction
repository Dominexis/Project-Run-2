# Set state

scoreboard players set #state kello.value 0




# Start animation

execute if entity @s[tag=!aj.cogwheel.animation.large] run function kello:entity/thrown/large_cog/animation/rotate/start
return 1
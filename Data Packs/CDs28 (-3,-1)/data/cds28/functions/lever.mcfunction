#this adds 35 ticks to the player's timer to run a small animation
scoreboard players add @s[scores={timerCDs=..1}] timerCDs 35
#a levitation effect is first applied
execute as @a[tag=teleporting,tag=pr.target,scores={timerCDs=35}] run effect give @s minecraft:levitation 1 35
execute as @a[tag=teleporting,tag=pr.target,scores={timerCDs=35}] at @s run playsound minecraft:block.iron_trapdoor.open block @a[tag=pr.target] ~ ~ ~ 1 0.5
#the pinball levers are cloned in two positions to make the animation effect of the levers raising and lowering
execute as @a[tag=teleporting,tag=pr.target,scores={timerCDs=30}] run function cds28:cloneup
execute as @a[tag=teleporting,tag=pr.target,scores={timerCDs=20}] run function cds28:clonedown
#the levitation effect is removed 
execute as @a[tag=teleporting,tag=pr.target,scores={timerCDs=20}] run effect clear @s minecraft:levitation
#this teleport the player to their active checkpoint if it exists, if not the player is not teleported and this effect can be used to progress the plot if the player has not reached any checkpoint
execute as @a[tag=teleporting,tag=pr.target,scores={timerCDs=2}] if entity @s[tag=check] run scoreboard players set @s pr.death 1
#removes the tag to end the functions and avoid repetition
execute as @a[tag=teleporting,tag=pr.target,scores={timerCDs=2}] run tag @s remove teleporting
return 1
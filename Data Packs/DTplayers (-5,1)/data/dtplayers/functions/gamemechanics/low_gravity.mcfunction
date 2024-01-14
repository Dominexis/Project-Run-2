#LOW GRAVITY MECHANICS
#function is run as and at all players who are in the plot who are eligable for low gravity mechanics


effect clear @s

#check if there is a block immediately above the player's head for jump cancellation purposes
execute if block ~-0.3 ~1.8 ~-0.3 minecraft:air if block ~0.3 ~1.8 ~-0.3 minecraft:air if block ~-0.3 ~1.8 ~0.3 minecraft:air if block ~0.3 ~1.8 ~0.3 minecraft:air run tag @s add dtplayers.head_free

#if the player's head is blocked, skip the jump cyle to the downgoing phase.
scoreboard players set @s[tag=!dtplayers.head_free] dtplayers.air_time 20
tag @s[tag=dtplayers.head_free] remove dtplayers.head_free

#time the player's air time
scoreboard players add @s[nbt={OnGround:0b}] dtplayers.air_time 1

#give certain effects to the player based on their air time.
#initial strong levitation followed by mild levitation followed by slow falling, followed by regular fall after 3.25 seconds.
effect give @s[scores={dtplayers.jump=1..,dtplayers.air_time=1..9}] minecraft:levitation 1 2 true
effect give @s[scores={dtplayers.jump=1..,dtplayers.air_time=10..20}] minecraft:levitation 1 0 true
effect give @s[scores={dtplayers.air_time=1..}] minecraft:slow_falling 1 0 true

#reset air time if on ground
scoreboard players set @s[scores={dtplayers.jump=1..},nbt={OnGround:1b}] dtplayers.jump 0
scoreboard players set @s[scores={dtplayers.air_time=1..},nbt={OnGround:1b}] dtplayers.air_time 0

#universal slowness effect
effect give @s minecraft:slowness 1 1 true


return 1
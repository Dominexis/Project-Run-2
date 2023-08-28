scoreboard players operation #input pr.value = @s inquognito.temp
scoreboard players operation #input pr.value *= #20 pr.value
function pr:generic/trigonometry/cosine
scoreboard players operation #output pr.value *= #-1 pr.value
scoreboard players add #output pr.value 1500
scoreboard players operation #output pr.value /= 200 inquognito.values

scoreboard players operation lengthInner inquognito.temp = #output pr.value
execute facing ^ ^1 ^ run function inquognito:logic/abilities/gun/augments/trinity/raycast/loop_inner
scoreboard players operation lengthInner inquognito.temp = #output pr.value
execute facing ^1 ^-1 ^ run function inquognito:logic/abilities/gun/augments/trinity/raycast/loop_inner
scoreboard players operation lengthInner inquognito.temp = #output pr.value
execute facing ^-1 ^-1 ^ run function inquognito:logic/abilities/gun/augments/trinity/raycast/loop_inner

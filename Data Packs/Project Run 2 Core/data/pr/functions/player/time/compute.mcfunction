# Compute time parameters

scoreboard players operation #milliseconds pr.value = @s pr.time
scoreboard players operation #seconds pr.value = #milliseconds pr.value
scoreboard players operation #milliseconds pr.value %= #1000 pr.value
scoreboard players operation #seconds pr.value /= #1000 pr.value
scoreboard players operation #minutes pr.value = #seconds pr.value
scoreboard players operation #seconds pr.value %= #60 pr.value
scoreboard players operation #minutes pr.value /= #60 pr.value

execute if score #milliseconds pr.value matches 000..009 run data modify storage pr:data tag.milliseconds set value '["00",{"score":{"name":"#milliseconds","objective":"pr.value"}}]'
execute if score #milliseconds pr.value matches 010..099 run data modify storage pr:data tag.milliseconds set value '["0" ,{"score":{"name":"#milliseconds","objective":"pr.value"}}]'
execute if score #milliseconds pr.value matches 100..999 run data modify storage pr:data tag.milliseconds set value '[""  ,{"score":{"name":"#milliseconds","objective":"pr.value"}}]'

execute if score #seconds pr.value matches ..09 run data modify storage pr:data tag.seconds set value '["0",{"score":{"name":"#seconds","objective":"pr.value"}}]'
execute if score #seconds pr.value matches 10.. run data modify storage pr:data tag.seconds set value '["" ,{"score":{"name":"#seconds","objective":"pr.value"}}]'

execute if score #minutes pr.value matches ..09 run data modify storage pr:data tag.minutes set value '["0",{"score":{"name":"#minutes","objective":"pr.value"}}]'
execute if score #minutes pr.value matches 10.. run data modify storage pr:data tag.minutes set value '["" ,{"score":{"name":"#minutes","objective":"pr.value"}}]'
return 1
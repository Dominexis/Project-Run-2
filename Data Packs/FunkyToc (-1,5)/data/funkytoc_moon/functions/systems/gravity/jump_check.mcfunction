advancement revoke @s only funkytoc_moon:jump_on

scoreboard players set @s funkytoc.moon.jump 0
# execute if predicate funkytoc_moon:jump_medium run function funkytoc_moon:systems/gravity/jump_medium
# execute if predicate funkytoc_moon:jump_high run function funkytoc_moon:systems/gravity/jump_high
function funkytoc_moon:systems/gravity/jump_medium

# Effects #
execute if score @s[nbt={OnGround:1b}] rko.jump matches 1.. run function rko:ambient/player_step/main

# Mechanics #
function rko:mech/fan/main
function rko:mech/checkpoint/main

# Misc #
function rko:misc/main
return 1
scoreboard players add piston_state rko.time 1
scoreboard players set piston rko.time 0

execute if score piston_state rko.time matches 1 run function rko:anim/piston/contract
execute if score piston_state rko.time matches 2 run function rko:anim/piston/contract
execute if score piston_state rko.time matches 3 run function rko:anim/piston/contract
execute if score piston_state rko.time matches 4 run function rko:anim/piston/contract

execute if score piston_state rko.time matches 13 run function rko:anim/piston/extend
execute if score piston_state rko.time matches 14 run function rko:anim/piston/extend
execute if score piston_state rko.time matches 15 run function rko:anim/piston/extend
execute if score piston_state rko.time matches 16 run function rko:anim/piston/extend

execute if score piston_state rko.time matches 25.. run scoreboard players set piston_state rko.time 0
return 1
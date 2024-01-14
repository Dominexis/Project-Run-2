# jump
execute if entity @s[scores={funkytoc.moon.jump=1..}] run function funkytoc_moon:systems/gravity/jump_check

# sprint
# execute if entity @s[predicate=funkytoc_moon:sprint_on] run function funkytoc_moon:systems/gravity/run_start
# execute if entity @s[predicate=funkytoc_moon:sprint_off] run function funkytoc_moon:systems/gravity/run_stop

# particles
execute if entity @s[scores={funkytoc.moon.particle.dust=1..}] run function funkytoc_moon:systems/gravity/dust_display

return 1
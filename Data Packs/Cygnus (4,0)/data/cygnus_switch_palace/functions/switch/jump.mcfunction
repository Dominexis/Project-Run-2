#scoreboard players set @a[tag=pr.target] cygnus_jump 0

scoreboard players set $cygnus_timer cygnus_data 0

# switch state:
# 0 : yellow ON, purple OFF
# 1 : yellow OFF, purple ON

scoreboard players set $cygnus_did_switch_state_just_change cygnus_data 0
execute if score $cygnus_switch_state cygnus_data matches 1 if score $cygnus_did_switch_state_just_change cygnus_data matches 0 run function cygnus_switch_palace:switch/purple_to_yellow
execute if score $cygnus_switch_state cygnus_data matches 0 if score $cygnus_did_switch_state_just_change cygnus_data matches 0 run function cygnus_switch_palace:switch/yellow_to_purple

function cygnus_switch_palace:switch/change_blocks
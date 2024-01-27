# Assign objectives

scoreboard objectives add kello.value dummy

scoreboard objectives add kello.player.id dummy
scoreboard objectives add kello.player.void_y dummy
scoreboard objectives add kello.player.y dummy
scoreboard objectives add kello.player.checkpoint.id dummy
scoreboard objectives add kello.player.chapter dummy
scoreboard objectives add kello.player.coglected dummy
scoreboard objectives add kello.player.cog.l dummy
scoreboard objectives add kello.player.cog.r dummy
scoreboard objectives add kello.player.cog.l_cooldown dummy
scoreboard objectives add kello.player.cog.r_cooldown dummy
scoreboard objectives add kello.player.cog.l_response dummy
scoreboard objectives add kello.player.cog.r_response dummy
scoreboard objectives add kello.player.l_launch_combo dummy
scoreboard objectives add kello.player.r_launch_combo dummy
scoreboard objectives add kello.player.l_parkour_combo dummy
scoreboard objectives add kello.player.r_parkour_combo dummy
scoreboard objectives add kello.player.l_combo_timer dummy
scoreboard objectives add kello.player.r_combo_timer dummy
scoreboard objectives add kello.player.sfx_alt dummy
# scoreboard objectives add kello.player.l_cogwheel_timeout dummy
# scoreboard objectives add kello.player.r_cogwheel_timeout dummy
scoreboard objectives add kello.player.music_progress_queue dummy
scoreboard objectives add kello.player.music_progress dummy
scoreboard objectives add kello.player.music_timestamp dummy
scoreboard objectives add kello.player.music_transition_progress dummy
scoreboard objectives add kello.player.music_transition_timestamp dummy
scoreboard objectives add kello.player.restart_music_cooldown dummy
scoreboard objectives add kello.player.title_state dummy
scoreboard objectives add kello.player.title_progress dummy
scoreboard objectives add kello.player.title_timer dummy
scoreboard objectives add kello.player.title_timer dummy
scoreboard objectives add apparatus_restart_music trigger

scoreboard objectives add kello.ticks dummy
scoreboard objectives add kello.level.id dummy
scoreboard objectives add kello.level.var dummy
scoreboard objectives add kello.level.next_id dummy
scoreboard objectives add kello.level.next_var dummy
scoreboard objectives add kello.entity.checkpoint.id dummy
scoreboard objectives add kello.entity.ignore_checkpoint dummy
scoreboard objectives add kello.entity.variant dummy
scoreboard objectives add kello.entity.id dummy
scoreboard objectives add kello.entity.tick_dist dummy
scoreboard objectives add kello.entity.parent_id dummy
scoreboard objectives add kello.entity.relationship dummy
scoreboard objectives add kello.entity.active_children dummy
scoreboard objectives add kello.entity.link dummy
scoreboard objectives add kello.entity.owner dummy
scoreboard objectives add kello.entity.state dummy
scoreboard objectives add kello.entity.timer dummy
scoreboard objectives add kello.entity.delay dummy
scoreboard objectives add kello.entity.lifetime dummy
scoreboard objectives add kello.entity.frame_00 dummy
scoreboard objectives add kello.entity.air_toggle dummy
scoreboard objectives add kello.entity.quantity dummy
scoreboard objectives add kello.entity.launch_power dummy

scoreboard objectives add kello.decal dummy
scoreboard objectives add kello.decal.id dummy
scoreboard objectives add kello.decal.timer dummy
scoreboard objectives add kello.decal.delay dummy
scoreboard objectives add kello.decal.state dummy
scoreboard objectives add kello.decal.sequence dummy
scoreboard objectives add kello.decal.active dummy

# scoreboard objectives add kello.aim.id dummy
# scoreboard objectives add kello.aim.count dummy
# scoreboard objectives add kello.aim.scale dummy

scoreboard objectives add kello.component.pos_1 dummy
scoreboard objectives add kello.component.pos_2 dummy
scoreboard objectives add kello.component.state dummy

scoreboard objectives add kello.player.logoff minecraft.custom:minecraft.leave_game

scoreboard objectives add kello.component.to_y dummy
scoreboard objectives add kello.component.to_x dummy

scoreboard objectives add kello.decal.rot_speed dummy
scoreboard objectives add kello.decal.rot_mode dummy

scoreboard objectives add kello.decal.shafts dummy
scoreboard objectives add kello.decal.shafts_activated dummy
scoreboard objectives add kello.decal.min_shafts_activated dummy

scoreboard objectives add kello.event.id dummy

scoreboard objectives add kello.sound.stop_att dummy
scoreboard objectives add kello.sound.timer dummy
scoreboard objectives add kello.sound.delay dummy

scoreboard objectives add kello.death.delay dummy
scoreboard objectives add kello.death.send_delay dummy
scoreboard objectives add kello.death.send_delay_time dummy





#> NOTE: DEBUG TRIGGERS

# scoreboard objectives add kello.decal.gimbal_to_selection_facing trigger
# scoreboard objectives add kello.decal.pos_to_selection_facing trigger
# scoreboard objectives add kello.decal.visualize_selected_decal_id trigger
# scoreboard objectives add kello.update_rig_pos trigger





# Instantiate constants NOTE : MIGHT BE UNUSED

scoreboard players set #PI kello.value 314


scoreboard players set #-1 kello.value -1
scoreboard players set #1 kello.value 1
scoreboard players set #2 kello.value 2
scoreboard players set #3 kello.value 3
scoreboard players set #4 kello.value 4
scoreboard players set #5 kello.value 5
scoreboard players set #10 kello.value 10
scoreboard players set #15 kello.value 15
scoreboard players set #16 kello.value 16
scoreboard players set #17 kello.value 17
scoreboard players set #25 kello.value 25
scoreboard players set #100 kello.value 100
scoreboard players set #125 kello.value 125
scoreboard players set #250 kello.value 250
scoreboard players set #256 kello.value 256
scoreboard players set #180 kello.value 180
scoreboard players set #1000 kello.value 1000
scoreboard players set #10000 kello.value 10000
scoreboard players set #100000 kello.value 100000
scoreboard players set #1000000 kello.value 1000000


# Orientation sensitive decals
scoreboard players set $decal.small_gear kello.decal 0001
scoreboard players set $decal.large_gear kello.decal 0002
scoreboard players set $decal.small_shaft kello.decal 0003
scoreboard players set $decal.large_shaft kello.decal 0004
scoreboard players set $decal.small_decal_shaft kello.decal 0005
scoreboard players set $decal.large_decal_shaft kello.decal 0006
scoreboard players set $decal.chain_platform kello.decal 0007
scoreboard players set $decal.escapement kello.decal 0008

# Wall sensitive decals
scoreboard players set $decal.bg_sml_wall_mellolily kello.decal 1001
scoreboard players set $decal.bg_med_wall_mellolily kello.decal 1002
scoreboard players set $decal.bg_lar_wall_mellolily kello.decal 1003
scoreboard players set $decal.bg_mellolily_pot_0 kello.decal 1004
scoreboard players set $decal.bg_mellolily_pot_1 kello.decal 1005
scoreboard players set $decal.moving_platform kello.decal 1006
scoreboard players set $decal.mellobanner_0 kello.decal 1007
scoreboard players set $decal.mellobanner_1 kello.decal 1008
scoreboard players set $decal.mellobanner_2 kello.decal 1009
scoreboard players set $decal.animwheel_0 kello.decal 1010
scoreboard players set $decal.animwheel_1 kello.decal 1011
scoreboard players set $decal.animwheel_2 kello.decal 1012
scoreboard players set $decal.animwheel_3 kello.decal 1013
scoreboard players set $decal.animwheel_4 kello.decal 1014
scoreboard players set $decal.animwheel_5 kello.decal 1015
scoreboard players set $decal.animwheel_6 kello.decal 1016
scoreboard players set $decal.animwheel_7 kello.decal 1017
scoreboard players set $decal.animwheel_8 kello.decal 1018

# Plain decals
scoreboard players set $decal.launchpad kello.decal 2001
scoreboard players set $decal.bg_sml_melloflora_lantern kello.decal 2003
scoreboard players set $decal.bg_med_melloflora_lantern kello.decal 2004
scoreboard players set $decal.bg_lar_melloflora_lantern kello.decal 2005
scoreboard players set $decal.bg_wind_chime kello.decal 2006

# Cardinal decals
scoreboard players set $decal.bg_melloleta_patch_singular kello.decal 3001
scoreboard players set $decal.bg_melloleta_path kello.decal 3002
scoreboard players set $decal.bg_melloleta_patch_areal kello.decal 3003
scoreboard players set $decal.bg_mellorainn_cluster kello.decal 3004
scoreboard players set $decal.bg_mellorainn_path kello.decal 3005
scoreboard players set $decal.bg_mellorainn_cluster_lar kello.decal 3006
scoreboard players set $decal.bg_comet_flakes_sml kello.decal 3007
scoreboard players set $decal.bg_comet_flakes_sml_1 kello.decal 3008
scoreboard players set $decal.bg_comet_flakes_sml_2 kello.decal 3009
scoreboard players set $decal.bg_comet_flakes_med kello.decal 3010
scoreboard players set $decal.gate_0 kello.decal 3011
scoreboard players set $decal.animwheel_0 kello.decal 3012
scoreboard players set $decal.animwheel_1 kello.decal 3013
scoreboard players set $decal.animwheel_2 kello.decal 3014
scoreboard players set $decal.animwheel_3 kello.decal 3015
scoreboard players set $decal.animwheel_4 kello.decal 3016
scoreboard players set $decal.animwheel_5 kello.decal 3017
scoreboard players set $decal.animwheel_6 kello.decal 3018
scoreboard players set $decal.animwheel_7 kello.decal 3019
scoreboard players set $decal.animwheel_8 kello.decal 3020

scoreboard players set #combo_timer kello.value 32
# scoreboard players set #cogwheel_timeout_limit kello.value 240

scoreboard players set #minimal_launchpad_power kello.value 1200
scoreboard players set #escapement_motion_pitch kello.value -450
scoreboard players set #escapement_motion kello.value 1250

scoreboard players set #thrown_small_cogwheel_lifetime kello.value 1800
scoreboard players set #thrown_large_cogwheel_lifetime kello.value 1600
scoreboard players set #throw_cooldown kello.value 10
scoreboard players set #throw_response kello.value 6

scoreboard players set #entity_tick_time_maximum kello.value 45
scoreboard players set #entity_tick_time_minimum kello.value 2
scoreboard players set #moving_platform_impact_delay kello.value 20


# Initialize variables (to avoid unexpected error)

scoreboard players set #checkpoint_is_final kello.value 0

scoreboard players set #music_intro_duration kello.player.music_timestamp 31200
scoreboard players set #music_melody_duration kello.player.music_timestamp 102400
scoreboard players set #music_final_duration kello.player.music_timestamp 128000
scoreboard players set #music_outro_duration kello.player.music_timestamp 33000
scoreboard players set #trans_pre kello.player.music_transition_timestamp 1675

scoreboard players set #player_check_thread_2_sec kello.value 40
scoreboard players set #player_check_thread_4_sec kello.value 80
scoreboard players set #player_check_thread_8_sec kello.value 160
scoreboard players set #player_check_thread_20_sec kello.value 400

scoreboard players set #time kello.player.restart_music_cooldown 60

scoreboard players add #global kello.decal.id 0
scoreboard players add #global kello.entity.id 0
scoreboard players add #has_deactivated kello.value 0

scoreboard players set #uninstantiate kello.value 0

scoreboard players set #death_send_delay kello.value 40
scoreboard players set #death_send_delay_short kello.value 24

scoreboard players set #generator.max_tick_time kello.value 1
scoreboard players set #generator.initial_tick_stamp kello.value 0
scoreboard players set #generator.current_tick_stamp kello.value 0
scoreboard players set #generator.overflow_max_iter kello.value 2048
scoreboard players set #generator.generate kello.value 0

scoreboard players set #halt_contraption_controller_checkpoint kello.value 1


# Storages

data merge storage kello:data {tag:{decal_generator_instance:{id:0,list:[]}}}
return 1
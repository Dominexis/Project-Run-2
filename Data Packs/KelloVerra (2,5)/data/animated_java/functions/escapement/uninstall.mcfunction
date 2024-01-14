scoreboard objectives remove aj.i
scoreboard objectives remove aj.id
scoreboard objectives remove aj.tween_time
scoreboard objectives remove aj.anim_time
scoreboard objectives remove aj.life_time
scoreboard objectives remove aj.escapement.export_version
scoreboard objectives remove aj.escapement.rig_loaded
scoreboard objectives remove aj.escapement.animation.close.local_anim_time
scoreboard objectives remove aj.escapement.animation.open.local_anim_time
scoreboard objectives remove aj.escapement.animation.player.local_anim_time
scoreboard objectives remove aj.escapement.animation.close.loop_mode
scoreboard objectives remove aj.escapement.animation.open.loop_mode
scoreboard objectives remove aj.escapement.animation.player.loop_mode
tellraw @s ["",{"text":"[","type":"text"},{"text":"Animated Java","color":"aqua","type":"text"},{"text":"] ","type":"text"},[{"text":"INFO ℹ","color":"green"},{"text":" > ","color":"gray"},{"text":"The escapement Rig has been uninstalled successfully.\n"},{"text":"Please remove the Rig's functions from the datapack before reloading.","color":"gray"}]]
return 1
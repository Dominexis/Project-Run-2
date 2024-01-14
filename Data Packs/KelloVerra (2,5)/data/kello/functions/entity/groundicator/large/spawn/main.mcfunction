# Summon entity(ies)

execute summon minecraft:item_display run function kello:entity/groundicator/large/spawn/score



# Play combo sensitive sfx (assuming the one who trigger this is the large thrown cogwheel)

scoreboard players set #disable_attach_sound kello.value 1
execute as @p[tag=kello.entity.player.target,tag=pr.target] run function kello:generic/sfx/cog_attach/player/parkour/large
return 1
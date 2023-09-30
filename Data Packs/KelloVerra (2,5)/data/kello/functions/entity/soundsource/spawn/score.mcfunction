# Assign scores

# TODO: DEBUG; CURRENTLY RELY ON A TEMPORARY ID ASSIGNMENTS, WHEN THE PLOT IS READY AND THE LEVEL GENERATION TOO -> UNCOMMENT THIS
#scoreboard players operation @s kello.entity.id = #local kello.entity.id

scoreboard players operation @s kello.decal.id = #selected kello.decal.id




# Assign tags

function kello:entity/soundsource/spawn/mark
data merge entity @s {Tags:["kello.exclude","kello.entity.type.soundsource","kello.entity.part.mark","kello.decal.controlled"]}
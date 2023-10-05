summon marker ~-38 ~1 ~0 {Tags:["LucumaExitDoor"],Rotation:[-90.0f,0.0f]}
summon marker ~37 ~1 ~0 {Tags:["LucumaExitDoor"],Rotation:[90.0f,0.0f]}

setblock ~-33 ~1 ~0 lectern[facing=east]
setblock ~32 ~1 ~0 lectern[facing=west]

# function lucumaprpack:resetchests

scoreboard objectives add lucuma.value dummy
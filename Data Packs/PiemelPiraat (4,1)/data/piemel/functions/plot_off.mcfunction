# kill all technical entities
kill @e[tag=piemel.slideanchor,tag=pr.target]
kill @e[tag=piemel.grabhooktarget,tag=pr.target]
kill @e[tag=piemel.grapplingtarget,tag=pr.target]
kill @e[tag=piemel.swingtarget,tag=pr.target]
kill @e[tag=piemel.swingtargetindicator,tag=pr.target]
kill @e[tag=piemel.raytrace,tag=pr.target]
kill @e[tag=piemel.itemchecksum,tag=pr.target]
kill @e[type=item,tag=pr.target]

# remove all scoreboards
scoreboard objectives remove piemel.values
scoreboard objectives remove piemel.coas
scoreboard objectives remove piemel.pullprog
scoreboard objectives remove piemel.swingprog
scoreboard objectives remove piemel.progress
scoreboard objectives remove piemel.hintto
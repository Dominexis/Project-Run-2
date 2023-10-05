# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities

scoreboard objectives remove uk_range_detect
scoreboard objectives remove uk_arrowCount
scoreboard objectives remove uk_bowCount
scoreboard objectives remove uk_targets
scoreboard objectives remove uk_kill

kill @e[type=pillager,tag=pr.target]
kill @e[type=marker,tag=uk.particle,tag=pr.target]
kill @e[type=arrow,tag=pr.target]
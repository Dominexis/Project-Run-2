### Sends player back to lobby
# Called by end/jingle

scoreboard players reset @s sdmc.end-jingle
function pr:player/finish
return 1
# Tells player how to restart music

tellraw @p ["",{"text":"[AncientApparatus]","bold":true,"color":"gold","type":"text"},{"text":" If music suddenly stops/vanishes, try ","color":"gray","type":"text"},{"text":"/trigger apparatus_restart_music ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger apparatus_restart_music"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to restart music!","bold":true,"underlined":true,"color":"gold"}]},"type":"text"},{"text":"in the chat.","color":"gray","type":"text"}]
return 1
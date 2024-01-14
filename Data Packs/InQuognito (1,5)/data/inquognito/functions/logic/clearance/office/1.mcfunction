tellraw @s [{"text":"Incoming Transmission (Office Vault Switches) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 22"},"type":"text"}]

tag @s add inquognito.target.office

playsound minecraft:entity.experience_orb.pickup master @s

return 1
#player click keypad

tag @s add lokiclick
function evilgodloki:code
playsound ui.button.click block @a ~ ~ ~ 0.3 2 0
advancement revoke @s only evilgodloki:left_click
advancement revoke @s only evilgodloki:right_click
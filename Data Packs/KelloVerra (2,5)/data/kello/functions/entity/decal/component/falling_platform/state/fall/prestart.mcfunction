# Set variant

function animated_java:falling_platform/apply_variant/default
execute if score @s kello.entity.variant matches 0 run function animated_java:falling_platform/apply_variant/chapter_1_0
execute if score @s kello.entity.variant matches 1 run function animated_java:falling_platform/apply_variant/chapter_1_1
execute if score @s starbits.meteor_decay matches 1.. run return run scoreboard players remove @s starbits.meteor_decay 1
scoreboard players add @s starbits.meteor 1

execute if score @s starbits.meteor matches 30.. run return run kill @s

tp @s ^ ^ ^4.5
execute store result storage starbits:storage temp.score int 1 run scoreboard players get @s starbits.meteor
function starbits:entity/meteor/tick/macro with storage starbits:storage temp
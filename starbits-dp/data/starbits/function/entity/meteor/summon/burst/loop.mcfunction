scoreboard players remove @s starbits.meteor_burst 1

execute store result storage starbits:storage temp.yaw int 1 run random value -45..45
execute store result storage starbits:storage temp.pitch int 1 run random value -60..-35
function starbits:entity/meteor/summon/set_variant

execute store result storage starbits:storage temp.decay int 7 run scoreboard players get @s starbits.meteor_decay
function starbits:entity/meteor/summon/burst/place_meteor with storage starbits:storage temp

scoreboard players add @s starbits.meteor_decay 1

execute if score @s starbits.meteor_burst matches 1.. run return run function starbits:entity/meteor/summon/burst/loop
scoreboard players set @s starbits.meteor_decay 1
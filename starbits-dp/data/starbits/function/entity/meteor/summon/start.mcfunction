data remove storage starbits:storage temp
scoreboard players set @s starbits.meteor 0

execute if predicate {condition:"random_chance",chance:0.20} run function starbits:entity/meteor/summon/burst/initiate

execute store result storage starbits:storage temp.yaw int 1 run random value -35..35
execute store result storage starbits:storage temp.pitch int 1 run random value -55..-30
execute store result storage starbits:storage temp.rise int 1 run random value -2..0
execute store result storage starbits:storage temp.run int 1 run random value -5..-1
execute if predicate {condition:"random_chance",chance:0.5} store result storage starbits:storage temp.run int 1 run random value 1..5

function starbits:entity/meteor/summon/set_variant

function starbits:entity/meteor/summon/place_meteor with storage starbits:storage temp

execute if score @s starbits.meteor_burst matches 1.. run function starbits:entity/meteor/summon/burst/loop
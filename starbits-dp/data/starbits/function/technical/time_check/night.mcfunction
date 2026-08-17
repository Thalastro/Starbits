scoreboard players set #starbits.time starbits.meteor 1
execute unless predicate {condition:"random_chance",chance:0.20} unless score #starbits.meteor_night starbits.meteor matches 1 run return run scoreboard players set #starbits.meteor_night starbits.meteor 0
scoreboard players set #starbits.meteor_night starbits.meteor 1
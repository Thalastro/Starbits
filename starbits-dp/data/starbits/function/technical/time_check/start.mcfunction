# 0 = Day
# 1 = Night
scoreboard players add #starbits.time starbits.meteor 0
scoreboard players add #starbits.meteor_night starbits.meteor 0

# If Night and Score is 0, run function
execute if predicate {condition:"time_check",clock:"minecraft:overworld",period:24000,value:{min:13500,max:24000}} \
unless score #starbits.time starbits.meteor matches 1 run function starbits:technical/time_check/night

# If Day and Score is 1, run function
execute if predicate {condition:"time_check",clock:"minecraft:overworld",period:24000,value:{min:0,max:13500}} \
unless score #starbits.time starbits.meteor matches 0 run function starbits:technical/time_check/day
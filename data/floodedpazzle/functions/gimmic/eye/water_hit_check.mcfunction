#> floodedpazzle:gimmic/eye/water_hit_check
# @within tag/function raycasting:block/hit_check

## Air Check
    execute unless block ~ ~ ~ water run data modify storage raycasting: result.hit set value 1b

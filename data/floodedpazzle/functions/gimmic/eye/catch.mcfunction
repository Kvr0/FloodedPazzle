#> floodedpazzle:gimmic/eye/catch
# @within function floodedpazzle:gimmic/eye/check_catch

## 酸素消費
    data modify storage floodedpazzle: input.oxygen.value set from storage calculation: gimmic.eye.lose
    function floodedpazzle:oxygen/consume/_

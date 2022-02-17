#> floodedpazzle:_/install
# @within tag/function installmanager:install


## InstallManagerへの登録
    data modify storage installmanager: installed append value FloodedPazzle
    data modify storage installmanager: relation append value {id:FloodedPazzle,dep:[InstallManager,TickManager]}

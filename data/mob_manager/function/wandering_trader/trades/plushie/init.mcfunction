data modify storage eden:temp trader.plushie.price set from storage eden:settings mob_manager.wandering_trader_settings.plushiepayamount
data modify storage eden:temp trader.plushie.payitem set from storage eden:settings mob_manager.wandering_trader_settings.plushiepayitem

execute store result storage eden:temp trader.plushie.id int 1 run random value 100..239

function mob_manager:wandering_trader/trades/plushie/get with storage eden:temp trader.plushie
function mob_manager:wandering_trader/trades/plushie/add with storage eden:temp trader.plushie
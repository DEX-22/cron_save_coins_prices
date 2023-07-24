require_relative('./builder/index.rb')
require_relative('./db/config/index.rb')

config = Config.new
config.setDbInfo(['bitcoins','dolares','euros'])
 

bitcoins = config.getInfo['bitcoins'] || [] 
dolares = config.getInfo['dolares'] || [] 
euros = config.getInfo['euros'] || []

counters = {
    "bitcoins" => bitcoins.length,
    "dolares" => dolares.length,
    "euros" => euros.length    
    }  
dataBuilder = DataBuilder.new

bitcoins = dataBuilder.createBitcoinData(bitcoins)
dolares = dataBuilder.createDolaresData(dolares)
euros = dataBuilder.createEurosData(euros)

if counters['bitcoins'] < bitcoins.length
    config.updateDbInfo('bitcoins',bitcoins)
end

if counters['dolares'] < dolares.length 
    config.updateDbInfo('dolares',dolares)
end
 
if counters['euros'] < dolares.length 
    config.updateDbInfo('euros',euros)
end




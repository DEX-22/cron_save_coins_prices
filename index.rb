require_relative('./builder/index.rb')
require_relative('./db/config/index.rb')

config = Config.new
config.setDbInfo(['bitcoins','soles','euros'])
 

bitcoins = config.getInfo['bitcoins'] || [] 
soles = config.getInfo['soles'] || [] 
euros = config.getInfo['euros'] || []

counters = {
    "bitcoins" => bitcoins.length,
    "soles" => soles.length,
    "euros" => euros.length    
    }  
dataBuilder = DataBuilder.new

bitcoins = dataBuilder.createBitcoinData(bitcoins)
soles = dataBuilder.createSolesData(soles)
euros = dataBuilder.createEurosData(euros)

if counters['bitcoins'] < bitcoins.length
    config.updateDbInfo('bitcoins',bitcoins)
end

if counters['soles'] < soles.length 
    config.updateDbInfo('soles',soles)
end
 
if counters['euros'] < soles.length 
    config.updateDbInfo('euros',euros)
end




require_relative('./builder/index.rb')
require_relative('./db/config/index.rb')

config = Config.new
config.setDbInfo

bitcoins = config.getInfo['bitcoins']
soles = config.getInfo['soles']

dataBuilder = DataBuilder.new

bitcoins = dataBuilder.createBitcoinData(bitcoins)
soles = dataBuilder.createSolesData(soles)

if dataBuilder.reload
    config.updateDbInfo('bitcoins',bitcoins)
    config.updateDbInfo('soles',soles)
end 
    



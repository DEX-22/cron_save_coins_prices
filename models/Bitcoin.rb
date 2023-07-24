require 'date'
require_relative('./Moneda.rb')
require_relative('../services/Data.rb')

class Bitcoin < Moneda
    def initialize 
        service = DataService.new 
        
        price = service.fetchBitcoinInDollarPriceNow['usd']
        date = DateTime.now()


        setPrice(price) 
        setDate(date)
    end
end

require 'date'
require_relative('./Moneda.rb')
require_relative('../services/Data.rb')

class Euro < Moneda

    def initialize 
        service = DataService.new 
        
        price = 1/service.fetchDolaresInVariousPricesNow['EUR']
        price = price.floor(3)
        date = DateTime.now()
    
    
        setPrice(price) 
        setDate(date)
    end


end
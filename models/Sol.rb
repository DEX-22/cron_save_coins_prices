require 'date'
require_relative('./Moneda.rb')
require_relative('../services/Data.rb')

class Sol < Moneda
    def initialize 
        service = DataService.new 
        
        price = service.fetchSolesInVariousPricesNow
        date = DateTime.now()


        setPrice(price) 
        setDate(date)
    end
end
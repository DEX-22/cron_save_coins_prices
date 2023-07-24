
require_relative('../models/Bitcoin.rb')
require_relative('../models/Sol.rb')
require_relative('../db/config/index.rb')


class DataBuilder  
    # attr_accessible :needUpdate
    @needUpdate
    def createBitcoinData(all)
  
        bitcoin = Bitcoin.new 

        if all.length > 0
            last = all.last
            if last['price'] == bitcoin.getPrice
                @needUpdate = false
                return all
            else
                @needUpdate = true

                bitcoinHash = {
                    "price"=> bitcoin.getPrice(),
                    "date"=> bitcoin.getDate()
                } 
                all.push(bitcoinHash)   
            
                return all
            end
        end

       
    end
    def createSolesData(all)
  
        sol = Sol.new 
        price = 1/sol.getPrice()['USD']
        
        if all.length > 0
            last = all.last
            if last['price'] == price.floor(3)
                @needUpdate = false
                return all
            else
                @needUpdate = true
                solHash = {
                    "price"=> price.floor(3),
                    "date"=> sol.getDate()
                } 
                all.push(solHash)   

                return all
            
            end

        end


    end

    def reload
        return @needUpdate
    end

end
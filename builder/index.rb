
require_relative('../models/Bitcoin.rb')
require_relative('../models/Euro.rb')
require_relative('../models/Sol.rb')
require_relative('../db/config/index.rb')


class DataBuilder 
    def createBitcoinData(all)
  
        bitcoin = Bitcoin.new 

        if all.length > 0
            last = all.last
            if last['price'] == bitcoin.getPrice 
                return all 
            end
        end
        bitcoinHash = {
            "price"=> bitcoin.getPrice(),
            "date"=> bitcoin.getDate()
        } 
        all.push(bitcoinHash)   
    
        return all       
    end
    def createSolesData(all)
  
        sol = Sol.new 
        price = sol.getPrice() 
        
        if all.length > 0
            last = all.last
            if last['price'] == price
                return all 
            end

        end
        solHash = {
            "price"=> price.floor(3),
            "date"=> sol.getDate()
        } 
        all.push(solHash)   

        return all

    end
    def createEurosData(all)
        euro = Euro.new
        price = euro.getPrice

        if all.length > 0
            last = all.last
            if last['price'] == price
                return all 
            end

        end
        euroHash = {
            "price"=> price.floor(3),
            "date"=> euro.getDate()
        } 
        all.push(euroHash)   

        return all

    end

end
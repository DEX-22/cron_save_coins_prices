require 'json'
require "uri"
require "net/http"

class DataService

    def fetchBitcoinInDollarPriceNow
 
        url = URI("https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=usd")

        https = Net::HTTP.new(url.host, url.port)
        https.use_ssl = true

        request = Net::HTTP::Get.new(url)

        response = https.request(request)
        response =  JSON.parse(response.read_body)

        return response['bitcoin']
        
    end
    def fetchDolaresInVariousPricesNow
 
        url = URI("https://api.exchangerate-api.com/v4/latest/PEN")

        https = Net::HTTP.new(url.host, url.port)
        https.use_ssl = true

        request = Net::HTTP::Get.new(url)

        response = https.request(request)
        response =  JSON.parse(response.read_body)

        return response['rates']
        
    end
end
 
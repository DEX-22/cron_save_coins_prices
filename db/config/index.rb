require 'json'
require_relative('../../helpers/Verify.rb')

class Config 
    include Verify

    @@route = './db/db.json'
    @info
    def setDbInfo(fields)
        file = File.read(@@route)
        @info = JSON.parse(file)

        # verfify = .new
        # self.myFields(fields,@info)
    end
    def getInfo
        return @info
    end 
    def updateDbInfo(title,info)
        @info[title] = info
        File.write(@@route,JSON.generate(@info))
    end
    # def createNewFile
    #     File.copy()
    # end
end




require 'json'

class Config
    @@route = './db/db.json'
    @info
    def setDbInfo
        file = File.read(@@route)
        @info = JSON.parse(file)
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




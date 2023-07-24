    
module Verify

    def myField(field,obj)
        if !obj.has_key?
            obj[field] = Array.new
        end
    end

    def myFields(fields,obj)
        for fields in field do
            myField(field,obj)
        end
    end
    
end
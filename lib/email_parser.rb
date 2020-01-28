require 'pry'

class EmailAddressParser
    def initialize(emails)
        @str = emails
    end
    def parse
        arr = @str.split
        result = arr.map do |elem|
            if elem[-1] == ","
                elem.delete_suffix!(",")
            else
                elem
            end
        end
        result.uniq
    end
end
require 'pry'

# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    def initialize(string)
        @string = string
    end

    def parse
        parsed = @string.split
        @parsed2 = parsed.map { |email|
        if email.slice(-1,1) == ','
            p 'blue'
            email = email.tr(',','')
        else
            email = email
        end
        }


        @parsed2 = @parsed2.uniq
        p @parsed2
    end

end

email_addresses = "john@doe.com, person@somewhere.org"
parser = EmailAddressParser.new(email_addresses)
 
parser.parse
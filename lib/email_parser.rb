# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser


    def initialize(string_of_emails)
        @strings = string_of_emails
    end



    def parse()
        delimiters = [',', ' ']
        x = @strings.split(Regexp.union(delimiters))
        x.delete_if { |string| string.length == 0 }
        x.uniq!

        return x
    end
end

email_addresses = "john@doe.com, person@somewhere.org"
parser = EmailAddressParser.new(email_addresses)
 
p parser.parse
# => ["john@doe.com", "person@somewhere.org"]
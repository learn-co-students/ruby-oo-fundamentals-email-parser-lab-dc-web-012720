# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'
# class EmailAddressParser

#     def initialize (email_addresses)
    
#        @new_email = email_addresses.split(", ")  || email_addresses.split(" ")
     
#     end

# #    def parse
# #     binding.pry
# #     parser = []
# #     i = 0
# #         while i < @new_email.length do 
# #         parser << @new_email[i]

# #         i += 1
# #         end
# #         parser
# #     end
#     def parse= (new_entry)
#         @new_email = new_entry
#     end

#     def parse
#         @new_email
#     end

# end

# test = EmailAddressParser.new("l@gmail.com")
# p test.parse

class EmailAddressParser
    attr_reader :email_addresses

    def initialize (email_addresses)
       @email_addresses = email_addresses
    end

   def parse
       self.email_addresses.gsub(",", "").split(" ").uniq

   end

end
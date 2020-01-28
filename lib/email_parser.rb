# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    def initialize(string)
        #! Seperate string when there is a ','(comma) ' '(space) ', '(comma & space)
        delimiters = [', ', ',', ' ']

        #! create a new vraiable that holds the seperated strings
        emails = string.split(Regexp.union(delimiters))
        #? Documentation on Regexp.union .... 
        #? https://ruby-doc.org/core-2.4.1/Regexp.html

        #? found on https://stackoverflow.com/questions/19509307/split-string-by-multiple-delimiters
        
        #! removes duplicates from the array with .uniq
        @email = emails.uniq
        
    end

   

    def parse 
        @email
    end


end
# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
    attr_accessor :emails
    def initialize (emails)
        @emails = emails
    end

    # #The [] say to match any character in that set. 
    #The + is there because you want to treat multiple spaces between emails as a single separator.
    def parse
        @emails.split(/[,\s]+/).uniq   
        # binding.pry
    end
end
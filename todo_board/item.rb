
class Item

    def self.valid_date?(date) # date structure is YYYY-MM-DD
        
        valid_days = ("1".."31").to_a
        valid_months = ("1".."12").to_a
        
        parts = date.split("-")
        year = parts[0]
        month = parts[1]
        day = parts[2]
        
        if parts.length != 3
            return false
        end
        if !valid_days.include?(day) || !valid_months.include?(month)
            return false
        else
            return true
        end
    end

    attr_reader :title, :deadline, :description
    attr_writer :title, :deadline, :description

    def initialize(title, deadline, description)
        @title = title
        @deadline = deadline
        @description = description
    end



end
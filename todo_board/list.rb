
require_relative "item.rb"

class List

    attr_reader :label, :items
    attr_writer :label

    def initialize(label)
        @label = label
        @items = []
    end

    def add_item(title, date, description = "")
        if !Item.valid_date?(date)
            return false
        else
            @items << Item.new(title, date, description)
            return true
        end
    end

    def size
        return @items.length
    end

    def valid_index?(index)
        0 <= index && index < self.size
    end

    def swap_index(index_1, index_2)
        return false if !valid_index?(index_1) || !valid_index?(index_2)
        @items[index_1], @items[index_2] = @items[index_2], @items[index_1]
        true
    end

    def [](index)
        return nil if !valid_index?(index)
        @items[index]
    end

    def priority
        @items.sort_by! { |item| item.deadline }
        @items[0]
    end

    def print_full_item(index)
    end




end

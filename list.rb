require "./item.rb"
class List
    attr_writer :items 
    def initialize()
        @items = []
    end

    def add_item(name)
        item = Item.new(name)
        @items.push(item)
    end
    
    def remove_item(index)
        @items.delete_at(index)
    end 

    def check_item(index)
        @items[index].check = true
        puts @items[index]
    end

    def remove_all
        @items.clear
    end

    def view_all()
        if @items == []
            puts "The list is empty"
        else
            @items.each_index do |index|
              puts "#{index + 1} - #{@items[index]}"
            end
        end
    end
    
    
end

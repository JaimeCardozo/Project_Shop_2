class Item
    attr_writer :name, :check
    def initialize(name="")
        @name = name
        @check = false
    end
    def to_s
        if @check
            "#{@name} [x]"
        else
            "#{@name} []"
        end
    end
end
item = Item.new("jamon")
puts item
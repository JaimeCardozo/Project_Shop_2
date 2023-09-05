require "./list.rb"
require "./item.rb"
#add item
#delete item
#view all items
#check item
#delete all items
#exit
class ListApp
    attr_writer :list

    def initialize
        @list = List.new
    end

    def add()
        puts "Digit item name: "
        item_name = gets.chomp
        @list.add_item(item_name)
    end

    def remove()
        puts "Digit item index: "
        index = gets.chomp.to_i
        @list.remove_item(index-1)
    end

    def view_all
        @list.view_all()
    end

    def check()
        puts "Digit item index: "
        index = gets.chomp.to_i
        @list.check_item(index-1)
    end

    def delete_all
        puts "You wants all? Y/N"
        answer = gets.chomp.upcase
        if answer == "Y" || answer == "YES"
            @list.remove_all()
            puts "All items was erased"
        else
            puts "Invalid Option"
        end 
    end

    def run
        puts "Welcome to List_APP"
        items = ListApp.new
            loop do
                puts "
                  Menu
                  a - Add item
                  r - Remove item
                  v - View item
                  M - Mark item
                  E - Erased all
                  C- Close"
                opt = gets.chomp
                opt = opt.upcase
                case opt
                when "A"
                    "Add item"
                    items.add()
                when "R"
                    "Remove item"
                    items.remove()
                when "V"
                    "view item"
                    items.view_all()
                when "M"
                    "Mark item"
                    items.check()
                when "E"
                    "Erased all"
                    items.delete_all()             
                when "C"
                    "Close"
                    puts "Thanks for using me"
                    break
                else
                    puts "Option invalid"
                end
            end 
    end
end


def main()
  list_app = ListApp.new
  list_app.run
end
main()
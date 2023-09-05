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

    def add(item)
        @list.add_item(item)
    end

    def remove(index)
        @list.remove_item(index)
    end

    def view_all
        @list.view_all()
    end

    def check(index)
        @list.check_item(index)
    end

    def delete_all
        @list.remove_all()
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
                    puts "Digit item name: "
                    item_name = gets.chomp
                    items.add(item_name)
                when "R"
                    "Remove item"
                    puts "Digit item index: "
                    index = gets.chomp.to_i
                    items.remove(index)
                when "V"
                    "view item"
                    items.view_all()
                when "M"
                    "Mark item"
                    puts "Digit item index: "
                    index = gets.chomp.to_i
                    items.check(index)
                when "E"
                    "Erased all"
                    puts "You wants all? Y/N"
                    answer = gets.chomp.upcase
                    if answer == "Y" || answer == "YES"
                        items.delete_all()
                        puts "All items was erased"
                    else
                        puts "Invalid Option"
                    end                
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
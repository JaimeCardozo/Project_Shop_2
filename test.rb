list = ["casa","perro",1,2]
list.each_index do |index|
    puts "#{index + 1}  #{list[index]}"
end
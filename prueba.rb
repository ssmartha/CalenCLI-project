# fami = [
#   {:name => "baio", :edad => 32, :id => 2}, 
#   {:name => "ole", :edad => 26, :id => 4}, 
#   {:name => "melanie", :edad => 18, :id => 6}
# ]

# fami[0][:name] = "braulio"

# fami2 = fami.map do |key, value|
#   "#{:name =>"Sofi"} #{:edad =>25} #{:id => 4}"
# end

# puts fami2.class 
h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }
h1.merge!(h2)
puts h1

arreglo = 
# def fami_dat(fami, event_id)
#   fami.each do |id|
#     if id[:id]== event_id
#       puts id[:edad]
#       puts event_id
#     # else
#     #   puts "wrong id"
#     end
#   end
# end
# print "Envent ID: "
# event_id = gets.chomp.to_i
# fami_dat(fami, event_id)




# require "date"
# print "start_end: "
#       new_start_end = gets.chomp
#       while !new_start_end.include? " "
#         puts "'HH:MM HH:MM'or leave it empty"
#         print "start_end: "
#         new_start_end = gets.chomp
#       end
#       p start_end = new_start_end.split(" ")
#       while start_end[0] > start_end[1]
#         puts "Cannot end before start"
#         print "start_end: "
#         new_start_end = gets.chomp
#         start_end=new_start_end.split(" ")
#       end
#       puts DateTime.parse("#{start_end}").strftime('%FT%T%:z')

  
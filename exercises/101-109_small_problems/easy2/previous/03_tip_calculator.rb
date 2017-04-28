puts "=> What is the bill?"
bill = gets.chomp.to_f

puts "=> What is the tip percentage?"
tip_percentage = gets.chomp.to_f

tip = bill * tip_percentage / 100
total = bill + tip

formatted_tip = format('%.2f', tip)
formatted_total = format('%.2f', total)

puts "=> The tip is $#{formatted_tip}"
puts "=> The total is $ #{formatted_total}"

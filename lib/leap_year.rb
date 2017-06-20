puts 'This program will determine what leap years are between two specific dates that you assign.'
puts ''
puts 'What would you like your starting year to be?'
start_year = gets.chomp.to_i
puts ''
puts 'What would you like your ending year to be?'
end_year = gets.chomp.to_i
puts "Leap years between #{start_year} and #{end_year}"

if start_year > end_year
  puts 'Your closing date is before your start date. Please try again'
  return
end

leap_years = []
start_year.upto(end_year) do |year|
  if (year % 4 == 0)
    leap_years << year unless (year % 100 == 0) and (year % 400 != 0)
  end
end

puts leap_years.join(', ')
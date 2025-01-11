n = gets.to_i # the number of temperatures to analyse
inputs = gets.split
temperatures = inputs.map(&:to_i)

  if n == 0 
    puts 0
  end

closest = nil
temperatures.each do |temp|
  if closest.nil? || (temp.abs < closest.abs) || (temp.abs == closest.abs && temp > closest)
    closest = temp
  end
end
puts closest
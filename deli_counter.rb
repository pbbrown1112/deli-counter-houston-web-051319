# Write your code here.
katz_deli = []

def line(wait)
  if wait.length == 0
    puts "The line is currently empty."
  else
    line_and_number_array = []
    wait.each_with_index do |person, index|
      line_and_number_array.push("#{index+1}. #{person}")
    end
    puts "The line is currently: "+ line_and_number_array.join(' ')
  end
end

def take_a_number(wait, name)
  wait.push(name)
  puts "Welcome, #{name}. You are number #{wait.length} in line."
end

def now_serving(wait)
  if wait.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{wait.shift()}."
  end
end

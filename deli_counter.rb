# Write your code here.
def line(line_of_people)
  if line_of_people.empty?
    puts "The line is currently empty."
  else
    message = "The line is currently:"
    line_of_people.each.with_index do |person, i|
      message += " #{i+1}. #{person}"
    end
    puts message
  end
end

def take_a_number(line_of_people, new_person)
  line_of_people << new_person
  puts "Welcome, #{new_person}. You are number #{line_of_people.size} in line."
end

def now_serving(line_of_people)
  if line_of_people.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line_of_people.first}."
    line_of_people.shift
  end
end
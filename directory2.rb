

def input_students
  puts "Please enter the names of the students"
  puts "to finish just hit return twice"
#   create array for the names
students = []
# get the 1st name
name = gets.chomp

  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get more names
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    if student[:name].start_with? "J"
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

# calling the methods
students = input_students
print_header
print(students)
print_footer(students)
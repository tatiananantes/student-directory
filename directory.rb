
def interactive_menu
  students = []
  loop do
# 1. print the menu and ask the user what to do
puts "1. Input the students"
puts "2. Show the students"
puts "9. Exit"
# 2. read the input and save it into a variable
selection = gets.chomp
# 3. do what the user has asked
case selection
  when "1"
    students = input_students
  when "2"
    print_header
    print(students)
    print_footer(students)
  when "9"
    exit
  else 
    puts "Please try again."
  end
# 4. repeat from step 1  
  end
end

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
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
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
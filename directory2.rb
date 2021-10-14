
def input_students
  puts "Please enter the names of the students"
  name = gets.chomp
  puts "Please enter their hobbie"
  hobbie = gets.chomp
  puts "Please enter their nationality"
  nationality = gets.chomp
  puts "to finish just hit return twice"
#   create array for the names
students = []

  while !name.empty? do
    students << {name: name, hobbie: hobbie, nationality: nationality, cohort: :november}
    puts "Now we have #{students.count} students"
    # get more names
    puts "Please enter the names of the students"
  name = gets.chomp
  puts "Please enter their hobbie"
  hobbie = gets.chomp
  puts "Please enter their nationality"
  nationality = gets.chomp
  puts "to finish just hit return twice"
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end


# def print(students)
#   students.each do |student|
#     puts "#{student[:name]} (#{student[:cohort]} cohort)"
#   end
# end

def print(students)
  count = 0
  while count < students.length
    puts "#{students[count][:name]}, #{students[count][:hobbie]}, #{students[count][:nationality]}, (#{students[count][:cohort]} cohort)"
    count += 1
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
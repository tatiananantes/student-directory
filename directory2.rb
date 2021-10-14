
def input_students
  puts "Please enter the names of the student"
  name = gets.chomp
  puts "Please enter student cohort"
  cohort = gets.chomp.to_sym
  puts "Please enter their hobbie"
  hobbie = gets.chomp
  puts "Please enter their nationality"
  nationality = gets.chomp
  puts "to finish just hit return twice"
#   create array for the names
students = []

  while !name.empty? do
    students << {name: name, hobbie: hobbie, nationality: nationality, cohort: cohort}
    puts "Now we have #{students.count} students"
    # get more names
    puts "Please enter the name of the students"
    name = gets.chomp
    puts "Please enter student cohort"
    cohort = gets.chomp.to_sym
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

# def print(students)
#   count = 0
#   while count < students.length
#     puts "#{students[count][:name].center(15)}, #{students[count][:hobbie].center(15)}, #{students[count][:nationality].center(8)}, #{students[count][:cohort]} cohort"
#     count += 1
#   end
# end

def print(students)
  students_by_cohort = {}
  students.each do |student|
    cohort = student[:cohort]
    if students_by_cohort[cohort] == nil
      students_by_cohort[cohort] = []
    end
      students_by_cohort[cohort].push(student[:name])
    end
  puts students_by_cohort
end

def print_footer(students)
  if students.count == 1
    puts "Overall, we have #{students.count} great student"
  else
    puts "Overall, we have #{students.count} great students"
end
end

# calling the methods
students = input_students
print_header
print(students)
print_footer(students)
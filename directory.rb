# All students in an array
# students = [
#   {name: "Dr Hannibal Lecter", cohort: :november},
#   {name: "Darth Vader", cohort: :november},
#   {name: "Nurse Ratched", cohort: :november},
#   {name: "Michael Corleone", cohort: :november},
#   {name: "Alex DeLarge", cohort: :november},
#   {name: "The Wicked Witch of the West", cohort: :november},
#   {name: "Terminator", cohort: :november},
#   {name: "Freddy Krueger", cohort: :november},
#   {name: "The Joker", cohort: :november},
#   {name: "Joffrey Baratheon", cohort: :november},
#   {name: "Norman Bates", cohort: :november}
# ]
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of the Villains Academy"
  puts "----------"
end

def print_names(students)
  students.each_with_index { |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  }
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

def names_starting_letter(students)
  puts "Enter letter to print names beginning with that letter"
  letter = gets.chomp.capitalize!
  students.each { |student|
    if student[:name].start_with?(letter)
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  }
end

def print_names_u12(students)
  puts "All student with names under 12 characters"
  students.each { |student|
    if student[:name].length < 12
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  }
end

students = input_students
print_header
print_names(students)
print_footer(students)
print_names_u12(students)
names_starting_letter(students)

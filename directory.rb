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
  students = []
  while true do
    puts "Please enter the name of the student you want to add"
    puts "To finish, just hit return twice"
    name = gets.chomp
    if name.empty?
      break
    end
    puts "Enter country of birth"
    country = gets.chomp
    students << {name: name, cohort: :november, cob: country}
    puts "Now we have #{students.count} students"
  end
  students
end

def print_header
  puts "The students of the Villains Academy".center(60)
  puts "----------".center(35)
end

def print_names(students)
x = 0
  while true
    print "#{x + 1} #{students[x][:name]} (#{students[x][:cohort]} cohort) Country of Birth: #{students[x][:cob]}".center(70)
    puts
    x += 1
    break if x == students.length
  end
  # students.each_with_index { |student, index|
  #   puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  # }
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
# print_names_u12(students)
# names_starting_letter(students)

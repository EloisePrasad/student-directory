# All students in an array
students = [
  "Dr Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]
# then print them
puts "The student of the Villains Academy"
puts "-------------"
students.each { |name|
puts name
}
# Finally, we print the total number of students
puts "Overall, we have #{students.count} great students"

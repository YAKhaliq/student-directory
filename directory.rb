# students = [
#   {name: "Dr. Hannibal Lecter", cohort: :november},
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
@students = []
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = gets.chomp

  while !name.empty? do 
    @students << {name: name, cohort: :november}
    puts "We now have #{@students.count} students"
    name = gets.chomp
  end
  @students
end
def print_header
  puts 'The students of Villains Academy'
  puts '-------------'
end
def print_student_list
  counter = 0
  @students.each do |student|
    counter +=1
    puts "#{counter}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end
def footer
  puts "Overall, we have #{@students.count} great students"
end
def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit" 
end
def show_students
  print_header
  print_student_list
  footer
end
def process(selection)
  case selection
  when "1"
    @students = input_students
  when "2"
    show_students
  when "9"
    exit # this will cause the program to terminate
  else
    puts "I don't know what you meant, try again"
  end
end
def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end
interactive_menu

require_relative('../models/student')


student1 = Student.new({
  "first_name" => "Hermiony",
  "second_name" => "Granger",
  "house" => "Griffindor",
  "age" => 15
  })
student1.save

student2 = Student.new({
  "first_name" => "Ron",
  "second_name" => "Weasley",
  "house" => "Griffindor",
  "age" => 14
  })
student2.save

student3 = Student.new({
  "first_name" => "Draco",
  "second_name" => "Malfoy",
  "house" => "Slytherin",
  "age" => 15
  })
student3.save

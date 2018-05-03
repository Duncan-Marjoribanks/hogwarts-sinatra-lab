require_relative('../models/student')
require_relative('../models/house')

house1 = House.new({
  "id" => 1,
  "name" => "Griffindor"
  })
house1.save()

house2 = House.new({
  "id" => 2,
  "name" => "Hufflepuff"
  })
house2.save()

house3 = House.new({
  "id" => 3,
  "name" => "Ravenclaw"
  })
house3.save()

house4 = House.new({
  "id" => 4,
  "name" => "Slytherin"
  })
house4.save()

student1 = Student.new({
  "first_name" => "Hermiony",
  "second_name" => "Granger",
  "house" => house1.id,
  "age" => 15
  })
student1.save

student2 = Student.new({
  "first_name" => "Ron",
  "second_name" => "Weasley",
  "house" => house1.id,
  "age" => 14
  })
student2.save

student3 = Student.new({
  "first_name" => "Draco",
  "second_name" => "Malfoy",
  "house" => house4.id,
  "age" => 15
  })
student3.save

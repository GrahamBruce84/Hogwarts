require_relative '../models/students'
require_relative '../models/house'
require 'pry-byebug'

@house1 = House.new({
  'name' => 'Gryffindor',
  'logo' => 'url(http://wallpapercave.com/wp/KfaKQq2.jpg)'
  })
@house1.save()

@house2 = House.new({
  'name' => 'Slytherin',
  'logo' => 'url(http://wallpapercave.com/wp/077Y3qQ.jpg)'
  })
@house2.save()

@house3 = House.new({
  'name' => 'Ravenclaw',
  'logo' => 'url(http://wallpapercave.com/wp/thplWHw.jpg)'
  })
@house3.save()

@house4 = House.new({
  'name' => 'HufflePuff',
  'logo' => 'url(http://wallpapercave.com/wp/wc1810488.jpg)'
  })
@house4.save()

student1 = Student.new({
  'first_name' => 'Harry',
  'second_name' => 'Potter',
  'house_id' => @house1.id,
  'age' => 12 
  })
student1.save()

student2 = Student.new({
  'first_name' => 'Hermione',
  'second_name' => 'Granger',
  'house_id' => @house1.id,
  'age' => 12 
  })
student2.save()

student3 = Student.new({
  'first_name' => 'luna',
  'second_name' => 'Lovegood',
  'house_id' => @house3.id,
  'age' => 11 
  })
student3.save()

student4 = Student.new({
  'first_name' => 'Draco',
  'second_name' => 'Malfoy',
  'house_id' => @house2.id,
  'age' => 12 
  })
student4.save()

student5 = Student.new({
  'first_name' => 'Cedric',
  'second_name' => 'Diggory',
  'house_id' => @house4.id,
  'age' => 14 
  })
student5.save()

binding.pry
nil















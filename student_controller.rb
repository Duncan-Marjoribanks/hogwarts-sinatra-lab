require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/student')


get '/students' do
  @students = Student.all()
  erb( :show_students )
end

get '/students/new' do
  erb( :new_student )
end

post '/students' do
@student = Student.new(params)
@student.save()
erb( :enrol )
end

# post '/houses' do
# @house = House.new(params)
# @house.save()
# end
# binding.pry
# nil

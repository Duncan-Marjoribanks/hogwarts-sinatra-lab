require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/student')


get '/students' do
  @students = Student.all()
  erb( :index )
end
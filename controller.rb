require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'

require_relative './models/students'

get '/hogwarts' do
  erb(:hogwarts_index)
end

get '/students' do
  @students = Student.all() 
  erb(:students_index)
end

get '/student/new' do
  @students = Student.all()
  @houses = House.all()
  erb(:students_new)
end

post '/students' do
  @student = Student.new(params)
  @student.save()
  erb(:students_create)
end


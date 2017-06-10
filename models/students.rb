require_relative '../db/sql_runner'
require_relative './house'

class Student

  attr_accessor :id, :first_name, :second_name, :house_id, :age

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @first_name = options['first_name']
    @second_name = options['second_name']
    @house_id = options['house_id'].to_i()
    @age = options['age'].to_i()
  end

  def save()
    sql = "INSERT INTO students (first_name, second_name, house_id, age)
    VALUES ('#{@first_name}', '#{@second_name}', #{@house_id}, #{@age}) RETURNING *;"
    result = SqlRunner.run(sql)
    @id = result[0]['id'].to_i()
  end

  def house()
    sql = "SELECT * FROM house WHERE id = #{house_id}"
    results = SqlRunner.run(sql)
    return House.new(results[0])
  end

  def self.all()
    sql = "SELECT * FROM students;"
    result = SqlRunner.run(sql)
    return result.map {|student| Student.new(student)}
  end

  def self.find(id)
    sql = "SELECT * FROM students WHERE id = #{id};"
    result = SqlRunner.run(sql)
    return result.map {|student| Student.new(student)}
  end

end
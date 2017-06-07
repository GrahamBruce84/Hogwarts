require_relative '../db/sql_runner'

class House

  attr_accessor :id, :name, :logo

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @name = options['name']
    @logo = options['logo']
  end

  def save()
    sql = "INSERT INTO house (name, logo)
    VALUES ('#{@name}', '#{@logo}') RETURNING *;"
    result = SqlRunner.run(sql)
    @id = result[0]['id'].to_i()
  end

  def self.all()
    sql = "SELECT * FROM house;"
    result = SqlRunner.run(sql)
    return result.map {|house| House.new(house)}
  end

  def self.find(id)
    sql = "SELECT * FROM house WHERE id = #{id};"
    result = SqlRunner.run(sql)
    return result.map {|house| House.new(house)}
  end

end
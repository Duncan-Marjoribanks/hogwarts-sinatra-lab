require_relative('../db/sql_runner')

class House

attr_reader :name, :id

def initialize(options)
  @id = options['id'].to_i
  @name = options['name']
end

def save()
  sql = "INSERT INTO houses (
  id, name
  )
  VALUES
  ($1, $2)"
  values = [@id, @name]
  SqlRunner.run(sql, values)
end

def self.all()
  sql = "SELECT * FROM houses"
  houses_hash = SqlRunner.run(sql)
  result = houses_hash.map {|house|
  House.new(house) }
  return result
end


end

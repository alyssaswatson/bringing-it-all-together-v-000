class Dog
  attr_accessor :name, :breed, :id

  def initialize(id: nil, name:, breed:)
    @id = id
    @name = name
    @breed = breed
  end

  def self.create_table
    sql =  <<-SQL
    CREATE TABLE IF NOT EXISTS dogs(
      id INTEGER PRIMARY KEY,
      name TEXT,
      breed TEXT
    )
    SQL
    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = <<-SQL
    DROP TABLE IF EXISTS dogs
    SQL
    DB[:conn].execute(sql)
  end

  def save

  end

  def self.new_from_db(dog_array)
    id = dog_array[0]
    name = dog_array[1]
    breed = dog_array[2]
    self.new(id: id, name: name, breed: breed)
  end

  def self.find_by_name(row)

  end

  def self.create(row)

  end
end

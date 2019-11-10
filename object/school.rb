class School
  def name
    @greeting = "Hello!"
  end

  def name1
    puts @greeting
  end
end

school = School.new
school.name
school.name1

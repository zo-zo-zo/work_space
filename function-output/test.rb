# class school
#
#   def name(word)
#     @school_name = word
#   end
#
#   def name1
#     puts @school_name
#   end
# end
#
# school = School.new
# school.name("A学校")
# school.name1
# class School
#   # nameというインスタンスメソッドを定義する
#   def name(word)
#     @school_name = word
#   end
#
#   def name1
#     puts @school_name
#   end
# end
#
# school = School.new
# school.name("A学校")
# school.name1
# class School
#   attr_accessor :name, :address
# end
# #
# # school = School.new
# # school.name = "A学校"
# # puts(school.name)
# # school.address = "渋谷区"
# # puts(school.address)
# a_school = School.new
# a_school.name = "A学校"
# puts(a_school.name)
#
# b_school = School.new
# b_school.name = "B学校"
# puts(b_school.name)
# class School
#   def initialize
#     puts("コンストラクタ！")
#   end
# end
#
# # A学校用のインスタンスを作成
# a_school = School.new
#
# # B学校用のインスタンスを作成
# b_school = School.new
# class School
#   attr_accessor :name
#   def initialize(name)
#     @name = name
#   end
# end
#
# a_school = School.new("A学校")
# puts(a_school.name)
#
# b_school = School.new("B学校")
# puts(b_school.name)
# class School
#   attr_accessor :name, :address
#   # 引数をカンマ区切りで複数指定
#   def initialize(name, address)
#     @name = name
#     @address = address
#   end
# end
#
# # A学校用のインスタンスを作成
# # 引数をカンマ区切りで複数指定
# a_school = School.new("A学校", "渋谷区")
# puts(a_school.name)
# puts(a_school.address)
# puts(a_school.instance_variables)

# class School
#
# def sample_instance_method
#   puts("sampleだよ！")
#   puts("#{@nmame}__________________________________________")
#
#   attr_accessor :name,
#                 :address,
#                 :number_of_students,
#                 :founding_years,
#                 :introduction_video_url,
#                 :introduction_statement
#
#   def initialize(name, address, number_of_students,founding_years,
#                  introduction_video_url, introduction_statement)
#     @name = name
#     @address = address
#     @number_of_students = number_of_students
#     @founding_years = founding_years
#     @introduction_video_url = introduction_video_url
#     @introduction_statement = introduction_statement
#   end
# end
#
# # A学校用のインスタンスを作成
# a_school = School.new("A学校", "東京都渋谷区..", 300, 100, "https://hoge.com", "A学校は自然豊かな...")
# puts(a_school.name)
# puts(a_school.address)
# puts(a_school.number_of_students)
# puts(a_school.founding_years)
# puts(a_school.introduction_video_url)
# puts(a_school.introduction_statement)
#
# puts(a_school.instance_variables)


class School
  attr_accessor :name,
                :address,
                :number_of_students,
                :founding_years,
                :introduction_video_url,
                :introduction_statement

  def initialize(name, address, number_of_students,founding_years,
                 introduction_video_url, introduction_statement)
    @name = name
    @address = address
    @number_of_students = number_of_students
    @founding_years = founding_years
    @introduction_video_url = introduction_video_url
    @introduction_statement = introduction_statement
  end

  ### 学校紹介動画ページを表示するインスタンスメソッドを定義

end



a_school = School.new("A学校", "東京都新宿区..", 300, 100, "任意のURL", "A学校は自然豊かな...")
# 以下でインスタンスメソッドを呼び出そう

b_school = School.new("B学校", "東京都新宿区..", 500, 30, "任意のURL", "B学校は文武両立で...")
# 以下でインスタンスメソッドを呼び出そう

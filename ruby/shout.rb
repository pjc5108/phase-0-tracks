# module Shout
#   def self.yell_angrily(words)
#   	words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#   	words + "!!!!!" + " :)"
#   end

# end

# #require_relative 'Shout'
# # ^^ Why does this make each output twice?

# happy_shout = Shout.yell_angrily("i'm shoutingggggg")
# p happy_shout

# angry_shout = Shout.yell_happily("i'm happpppyyyyyy")
# p angry_shout

module Shout
  def yell_happily(words)
  	puts words + "!!!!!" + " :)"
  end

end

class Teacher
	include Shout
end

class Boss
	include Shout
end

teacher = Teacher.new
teacher.yell_happily("You are the best student in the world")

boss = Boss.new
boss.yell_happily("You are the most productive coder ever")
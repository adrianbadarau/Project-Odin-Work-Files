class CodeMaker
  attr_accessor :code
  def initialize
    i= 0
    posibilities = ['R','G','B','Y','W','B']
    c_array = []
    4.times {|i| c_array[i] = posibilities[rand(0..5)]}
    @code = c_array
  end

  def verify_code(code)
    rez = false
    if @code == code
      rez = true
    elsif
      code.each do |c_part|
        if @code.include?(c_part)
          if @code.index(c_part) == code.index(c_part)
            puts 'white - ' + c_part
          else
            puts 'black - ' + c_part
          end
        end
      end
    else
      rez = false
    end
    rez
  end
end

class Guess
  attr_accessor :guess
  def initialize
    puts 'Chose your combination'
    g_arr=[]
    4.times do |i|
      x=gets.chomp.upcase
      g_arr[i] = x
    end
    @guess = g_arr
  end
end


c = CodeMaker.new
print c.code
puts '''
----Game Start---
Chose the NR of guess available
'''
nr = gets.chomp.to_i
i=0
while i <= nr
  g = Guess.new
  print g.guess
  puts
  if c.verify_code(g.guess)
    puts 'Gongrats you win'
    break
  end
  #print c.verify_code(g.guess)
  i+=1
end
puts 'You loose' if i > nr


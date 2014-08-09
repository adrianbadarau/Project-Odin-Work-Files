=begin

class Song
  include Comparable
  attr_accessor :length

  def <=>(other)
    @length <=> other.length

  end

  def initialize(song_name, length)
    @song_name = song_name
    @length = length

  end
end

a = Song.new('Jimmy', 143)
b= Song.new('Negru Voda', 544)
c = Song.new('Vals', 50)

puts a<b
puts b>=c

puts a<=>c
=end

module ToolBox
  class Ruller
    attr_accessor :length

  end
end

module Country
  class Ruller
    attr_accessor :name

  end
end

a  = ToolBox::Ruller.new
a.length = 50
b = Country::Ruller.new
p b.name = "Gingis Khan"

include Country
c = Ruller.new
p c.name = 'Henry VIII'



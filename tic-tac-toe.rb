class Table
  attr_accessor :table
  def initialize
    @table = [[1,2,3],
              [1,2,3],
              [1,2,3]]
  end
  def move(pos1,pos2,val)
    @table[pos1][pos2] = val
  end
  def victory?(simb)
    vic = false
    @table.each do |row|
     if row.all? {|elem| elem == simb}
       vic = true
       break
     end

    end
    vic = true if (@table[0][0] == simb) and (@table[1][1] == simb) and (@table[2][2] == simb)
    vic = true if (@table[0][2] == simb) and (@table[1][1] == simb) and (@table [2][0] == simb)
    col = []
    i = 0
    while i < @table[0].length
      x=0
      while x < 3
        col << @table[x][i]
        x+=1
      end
      if col.all?{|elem| elem == simb}
        vic = true
        break
      end
      i+=1
    end
    vic
  end
end

table = Table.new
#p table.table
#p table.move(1,1,'X')
#table.move(0,0,'X')
#table.move(2,2,'X')
#p table
#p table.victory?('X')

move = 0

while move <= 27 do
  print table.table
  puts 'Make a Move'
  puts 'Chose row'
  row = gets.chomp.to_i
  puts 'Chose a colon'
  colon = gets.chomp.to_i
  puts 'Chose X/O'
  simb = gets.chomp.upcase!
  table.move(row,colon,simb)
  if table.victory?(simb)
    puts "Player #{simb} Wins!"
    break
  end

end


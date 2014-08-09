class Dungeon
  attr_accessor :player

  def initialize(player_name)
    @player = Player.new(player_name)
    @rooms = []

  end

  def start(location)
    @player.location = location
    show_current_description
  end

  def show_current_description
    puts find_room_in_dungeon(@player.location).full_description
  end

  def find_room_in_dungeon(reference)
    @rooms.detect{|room| room.reference == reference}
  end

  def find_room_in_direction(direction)
    find_room_in_dungeon(@player.location).connections[direction]
  end

  def go (direction)
    puts 'You go ' + direction.to_s
    @player.location = find_room_in_direction(direction)
    show_current_description
  end

  class Player
    attr_accessor :name, :location
    def initialize(name)
      @name = name
    end
  end

  class Room
    attr_accessor :reference, :name, :description, :connections
    def initialize(reference, name, description, connections)
      @reference = reference
      @name = name
      @description = description
      @connections = connections
    end
    def full_description
      "#{@name} \n\n you are in #{@description}"
    end
  end


  def add_room(reference, name, description, connections)
    @rooms << Room.new(reference, name, description, connections)
  end




end

def game_commands
  puts """
The commands for the game are:
1.Go -- it will let you moove from room to room
2.Cast -- it will let you cast a spell
3.Use -- it will let you take an item
4.Take -- it will allow you to pickup an item
5.Drop -- it will allow you to drop an item
6.Exit -- it will exit the game




"""
  command = gets.chomp
  return command.downcase!
end

my_dungeon = Dungeon.new("Adrian")
my_dungeon.add_room(:largecave, 'Large Cave', 'a cavernous cave', {:west => :smallcave})
my_dungeon.add_room(:smallcave, 'Small Cave', 'a claustrophobic cave', {:east => :largecave})

command = gets.chomp
puts my_dungeon.start(:largecave)
until command == 'exit' do

  case command
    when 'go'
      puts 'Where do you want to go ?'
      direction = gets.chomp.to_sym

      my_dungeon.go(direction)
    when 'cast'
      puts 'you cast a spell -- still in beta more to come soon'
    when 'use'
      puts 'you use an item -- still in beta more to come soo'
    when 'take'
      puts 'you take an item -- still in beta more to come soo'
    when 'drop'
      puts 'you drop the item -- still in beta more to come soo'
    else
      puts 'try again that is not a valid command'

  end
  command = gets.chomp
end
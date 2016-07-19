require 'matrix'
require_relative './board/tile'
require_relative './ship.rb'

class Board
  attr_reader :tiles, :size
  def initialize(size: 8)
    @tiles = Matrix.build(size, size){ Board::Tile.new }
    @size = size
  end

  def place(ship)
    puts ship
  end
end

b = Board.new


begin
  b.place(ship: Ship::Cruiser.new(start_coord: 'A2', end_coord: 'A2'))
rescue => e
  puts "Exception: #{e}"
end

begin
  b.place(ship: Ship::Cruiser.new(start_coord: 'A2', end_coord: 'C4'))
rescue => e
  puts "Exception: #{e}"
end

b.place(Ship::Cruiser.new(start_coord: 'A0', end_coord: 'A3'))
b.place(Ship::Submarine.new(start_coord: 'A0', end_coord: 'D0'))
b.place(Ship::AircraftCarrier.new(start_coord: 'C0', end_coord: 'C5'))

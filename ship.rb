require_relative 'ship/cruiser'
require_relative 'ship/submarine'
require_relative 'ship/battleship'
require_relative 'ship/aircraft_carrier'
require_relative 'coordinate_parser'

class Ship
  include CoordinateParser

  def initialize(start_coord:, end_coord:)
    @locations = []

    start_coords = CoordinateParser.parse(start_coord)
    @start_col = start_coords[:column]
    @start_row = start_coords[:row]

    end_coords = CoordinateParser.parse(end_coord)
    @end_col = end_coords[:column]
    @end_row = end_coords[:row]

    validate_ship!
  end

  def validate_ship!
    validate_size!
  end

  def horizontal?
    @start_row == @end_row
  end

  def vertical?
    @start_col == @end_col
  end

  private

  def validate_size!
    error = false
    if horizontal?
      error = 'invalid size' if (@end_col - @start_col) != @size
    elsif vertical?
      error = 'invalid size' if (@end_row - @start_row) != @size
    else
      error = 'gotta be placed in a straight line'
    end

    raise(ArgumentError, error) if error
  end
end

class Ship
  class Battleship < Ship
    def initialize(start_coord:, end_coord:)
      @size = 4

      super
    end
  end
end

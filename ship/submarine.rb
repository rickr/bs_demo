class Ship
  class Submarine < Ship
    def initialize(start_coord:, end_coord:)
      @size = 3

      super
    end
  end
end

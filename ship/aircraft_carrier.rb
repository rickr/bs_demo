class Ship
  class AircraftCarrier < Ship
    def initialize(start_coord:, end_coord:)
      @size = 5

      super
    end
  end
end

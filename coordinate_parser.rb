module CoordinateParser
  def self.parse(input)
    result = input.match(/([a-z])(\d+)/i)
    row = convert_letter_to_integer(result[1])
    column = result[2].to_i
    { row: row, column: column }
  end

  # convert a -> 0, b -> 1, c -> 2 etc
  def self.convert_letter_to_integer(letter)
    letter.downcase.ord - 97
  end
end

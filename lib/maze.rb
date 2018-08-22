class Maze
  attr_reader :rooms
  attr_accessor :current_room

  def initialize()
    @current_room = 1
    @rooms = {
      1 => {
        :right => 2,
        :down => 4
      },
      2 => {
        :right => 3,
        :down => 5,
        :left => 1
      },
      3 => {
        :left => 2
      },
      4 => {
        :right => 5,
        :down => 7
      },
      5 => {
        :up => 2,
        :right => 6,
        :left => 4
      },
      6 => {
        :left => 5
      },
      7 => {
        :up => 4,
        :right => 8
      },
      8 => {
        :right => 9,
        :left => 7
      },
      9 => {
        :left => 8
      }
    }
  end

  def move(direction)
    @current_room = @rooms[@current_room][direction.to_sym]
  end


end

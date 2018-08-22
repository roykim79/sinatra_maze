require 'rspec'
require 'maze'

describe Maze do
  before(:each) do
    @maze = Maze.new()
  end

  describe '#current_room' do
    it 'returns the current room number' do
      @maze.current_room = 2
      expect(@maze.current_room()).to eq(2)
    end
  end

  describe '#move' do
    it 'changes the current room to the room right of current room when given a parameter of "right"' do
      @maze.move('right')
      @maze.move('right')
      expect(@maze.current_room()).to eq(3)
    end

    it 'changes the current room to the room below the current room when given a parameter of "down"' do
      @maze.move('right')
      @maze.move('down')
      expect(@maze.current_room()).to eq(5)
    end
  end
end

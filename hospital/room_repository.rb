require 'csv'
require 'pry-byebug'
require_relative 'room'

class RoomRepository
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @rooms = []
    @next_id = 1
    load_csv
  end

  def find(id)
    @rooms.find { |room| room.id == id }
  end

  def create(room)
    room.id = @next_id
    @rooms << room
    @next_id += 1
    save_csv
  end

  def load_csv
    # iterate over each row
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      # instantiate the Room
      row[:id] = row[:id].to_i
      row[:capacity] = row[:capacity].to_i
      # put them into @rooms array
      @rooms << Room.new(row)
    end
    @next_id = @rooms.empty? ? 1 : @rooms.last.id + 1
  end
end

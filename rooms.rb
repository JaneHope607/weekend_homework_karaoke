class Rooms

    attr_reader :name, :price, :capacity
    attr_accessor :song_list, :guests

    def initialize(name_room, price, capacity, song_list, people)
        @name_room = name
        @price = price
        @capacity = capacity
        @song_list = []
        @guests = []
    end

    def add_more_songs(song)
       @song_list.push(song)
    end

    def count_songs()
        @song_list.size
    end

    def check_in_guest(guest)

    end

    def check_out_guest(guest)

    end

end
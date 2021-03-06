class Rooms

    attr_reader :name_room, :price, :capacity
    attr_accessor :song_list, :guests

    def initialize(name_room, price, capacity, song_list, guests)
        @name_room = name_room
        @price = price
        @capacity = capacity
        @song_list = []
        @guests = []
    end

    def add_songs(song)
       @song_list.push(song)
    end

    def count_songs()
        return @song_list.size
    end

    def count_guests()
        return @guests.size
    end

    def guest_can_afford(guest, room)
        return guest.sufficient_funds(room)
    end

    def check_in_guests(guest, room)
        if (guest_can_afford(guest, room) && has_capacity)
            @guests.push(guest)
            guest.pay_for_room(room)
        end
        return "Sorry this rooms is unavailable for you."
    end

    def remove_guests(guest)
        @guests.delete(guest)
    end

    def has_capacity
        return @guests.length < @capacity
    end

    def song_in_playlist(song)
        return @song_list.include?(song)
    end

end